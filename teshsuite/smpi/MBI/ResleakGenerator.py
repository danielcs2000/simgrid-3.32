#! /usr/bin/python3

# Copyright 2021-2022. The MBI project. All rights reserved.
# This program is free software; you can redistribute it and/or modify it under the terms of the license (GNU GPL).

import os
import sys
import generator_utils as gen

template = """// @{generatedby}@
/* ///////////////////////// The MPI Bugs Initiative ////////////////////////

  Origin: MBI

  Description: @{shortdesc}@
    @{longdesc}@

  Version of MPI: Conforms to MPI 1.1, does not require MPI 2 implementation

BEGIN_MPI_FEATURES
  P2P!basic: Lacking
  P2P!nonblocking: Lacking
  P2P!persistent: Lacking
  COLL!basic: Lacking
  COLL!nonblocking: Lacking
  COLL!persistent: Lacking
  COLL!tools: @{toolfeature}@
  RMA: Lacking
END_MPI_FEATURES

BEGIN_MBI_TESTS
  $ mpirun -np 2 ${EXE}
  | @{outcome}@
  | @{errormsg}@
END_MBI_TESTS
//////////////////////       End of MBI headers        /////////////////// */

#include <mpi.h>
#include <stdio.h>

#define ITERATIONS 100
#define PARAM_PER_ITERATION 3
#define PARAM_LOST_PER_ITERATION 1

static void myOp(int *invec, int *inoutvec, int *len, MPI_Datatype *dtype) {
  for (int i = 0; i < *len; i++)
    inoutvec[i] += invec[i];
}

int main(int argc, char **argv) {
  int nprocs = -1;
  int rank = -1;
  int size = 1;
  int j = 0;

  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  printf("Hello from rank %d \\n", rank);

  if (nprocs < 2)
    printf("MBI ERROR: This test needs at least 2 processes to produce a bug!\\n");

  @{change_size}@
  @{init}@
  @{loop}@
  @{operation}@
  @{cond}@
  @{fini}@
  @{end}@

  @{free}@

  MPI_Finalize();
  printf("Rank %d finished normally\\n", rank);
  return 0;
}
"""

# Generate code with one collective
for call in gen.tcoll:
    patterns = {}
    patterns = {'call': call}
    patterns['generatedby'] = f'DO NOT EDIT: this file was generated by {os.path.basename(sys.argv[0])}. DO NOT EDIT.'
    patterns['toolfeature'] = 'Yes'
    patterns['call'] = call
    patterns['operation'] = gen.operation[call]("1")
    patterns['init'] = gen.init[call]("1")
    patterns['fini'] = gen.fini[call]("1")
    patterns['free'] = gen.free[call]("1")
    missing = patterns['fini']
    patterns['loop'] = ''
    patterns['cond'] = ''
    patterns['change_size'] = ''
    patterns['end'] = ''

    # Generate the correct code
    replace = patterns.copy()
    replace['shortdesc'] = '@{call}@ is correctly used'
    replace['longdesc'] = f'{call} correctly used'
    replace['outcome'] = 'OK'
    replace['errormsg'] = ''
    gen.make_file(template, f'ResLeak_{call}_ok.c', replace)

    # Generate the resleak
    replace = patterns.copy()
    replace['shortdesc'] = '@{call}@ has no free'
    replace['longdesc'] = '@{call}@ has no free'
    replace['outcome'] = f'ERROR: {gen.error[call]}'
    replace['errormsg'] = 'Resleak. @{call}@ at @{filename}@:@{line:MBIERROR}@ has no free.'
    replace['fini'] = ' /* MBIERROR MISSING: ' + missing + ' */'
    gen.make_file(template, f'ResLeak_{call}_nok.c', replace)

    # Generate multiple resleak
    replace = patterns.copy()
    replace['shortdesc'] = '@{call}@ lacks several free'
    replace['longdesc'] = '@{call}@ lacks several free'
    replace['outcome'] = f'ERROR: {gen.error[call]}'
    replace['errormsg'] = 'Resleak. @{call}@ at @{filename}@:@{line:MBIERROR}@ lacks several free.'
    replace['change_size'] = 'size=PARAM_PER_ITERATION;'
    replace['loop'] = 'for (int i = 0; i < ITERATIONS; i++) {\n    for (j = 0; j < PARAM_PER_ITERATION; j++) {'
    replace['cond'] = '      if (j < PARAM_PER_ITERATION - PARAM_LOST_PER_ITERATION) {'
    replace['fini'] = gen.fini[call]("1") + ' /* MBIERROR */'
    replace['end'] = '      }\n     }\n   }'
    gen.make_file(template, f'ResLeak_multiple_{call}_nok.c', replace)