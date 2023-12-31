#! /usr/bin/python3
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
  COLL!basic: @{collfeature}@
  COLL!nonblocking: @{icollfeature}@
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
#include <stdlib.h>

#define buff_size 128

int main(int argc, char **argv) {
  int nprocs = -1;
  int rank = -1;
  int root = 0;
  int size = 1;
  int j = 0;

  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  printf("Hello from rank %d \\n", rank);

  if (nprocs < 2)
    printf("MBI ERROR: This test needs at least 2 processes to produce a bug!\\n");

  MPI_Comm newcom = MPI_COMM_WORLD;
  MPI_Op op = MPI_SUM;
  MPI_Datatype type = MPI_INT;

  int dbs = sizeof(int)*nprocs; /* Size of the dynamic buffers for alltoall and friends */

  @{init}@
  @{start}@

  @{change_arg}@
  @{operation}@ /* MBIERROR2 */
  @{fini}@
  @{free}@

  MPI_Finalize();
  printf("Rank %d finished normally\\n", rank);
  return 0;
}
"""

#####################################################
# Generate code with color mismatch in MPI_Comm_split
#####################################################

for c in gen.tcoll4color:
    patterns = {}
    patterns = {'c': c}
    patterns['generatedby'] = f'DO NOT EDIT: this file was generated by {os.path.basename(sys.argv[0])}. DO NOT EDIT.'
    patterns['collfeature'] = 'Lacking'
    patterns['icollfeature'] = 'Lacking'
    patterns['toolfeature'] = 'Yes' if c in gen.tcoll4color else 'Lacking'
    patterns['c'] = c
    patterns['init'] = gen.init[c]("1")
    patterns['start'] = gen.start[c]("1")
    patterns['operation'] = gen.operation[c]("1")
    patterns['fini'] = gen.fini[c]("1")
    patterns['free'] = gen.free[c]("1")
    patterns['change_arg'] = ''

    # Generate the code with invalid color
    replace = patterns.copy()
    replace['shortdesc'] = 'Invalid color in @{c}@'
    replace['longdesc'] = 'invalid color in @{c}@'
    replace['outcome'] = 'ERROR: InvalidOtherArg'
    replace['errormsg'] = 'Invalid Argument in collective. @{c}@ at line @{line:MBIERROR2}@ has an invalid color'
    replace['change_arg'] = 'color=-10; /* MBIERROR1*/'
    gen.make_file(template, f'InvalidParam_OtherArg_{c}_nok.c', replace)


##################################
# Generate code with root mismatch
##################################

for c in gen.coll4root + gen.icoll4root:
    patterns = {}
    patterns = {'c': c}
    patterns['generatedby'] = f'DO NOT EDIT: this file was generated by {os.path.basename(sys.argv[0])}. DO NOT EDIT.'
    patterns['collfeature'] = 'Yes' if c in gen.coll4root else 'Lacking'
    patterns['icollfeature'] = 'Yes' if c in gen.icoll4root else 'Lacking'
    patterns['toolfeature'] = 'Lacking'
    patterns['c'] = c
    patterns['init'] = gen.init[c]("1")
    patterns['start'] = gen.start[c]("1")
    patterns['fini'] = gen.fini[c]("1")
    patterns['free'] = gen.free[c]("1")
    patterns['operation'] = gen.operation[c]("1")
    patterns['change_arg'] = ''

    # Generate an incorrect root matching (root mismatch)
    replace = patterns.copy()
    replace['shortdesc'] = 'Collective @{c}@ with a root mismatch'
    replace['longdesc'] = 'Odd ranks use 0 as a root while even ranks use 1 as a root'
    replace['outcome'] = 'ERROR: RootMatching'
    replace['errormsg'] = 'Collective root mistmatch. @{c}@ at @{filename}@:@{line:MBIERROR2}@ has 0 or 1 as a root.'
    replace['change_arg'] = 'if (rank % 2)\n    root = 1; /* MBIERROR1 */'
    gen.make_file(template, f'ParamMatching_Root_{c}_nok.c', replace)

    # Generate the call with root=-1 (invalid root)
    replace = patterns.copy()
    replace['shortdesc'] = f'Collective {c} with root = -1'
    replace['longdesc'] = f'Collective {c} with root = -1'
    replace['outcome'] = 'ERROR: InvalidRoot'
    replace['errormsg'] = 'Invalid collective root.  @{c}@ at @{filename}@:@{line:MBIERROR2}@ has -1 as a root while communicator MPI_COMM_WORLD requires ranks in range 0 to 1.'
    replace['change_arg'] = 'root = -1; /* MBIERROR1 */'
    gen.make_file(template, f'InvalidParam_RootNeg_{c}_nok.c', replace)

    # Generate the call with root=2 (root not in communicator)
    replace = patterns.copy()
    replace['shortdesc'] = f'Collective {c} with root out of the communicator'
    replace['longdesc'] = f'Collective {c} with root = 2 (there is only 2 ranks)'
    replace['outcome'] = 'ERROR: InvalidRoot'
    replace['errormsg'] = 'Invalid collective root.  @{c}@ at @{filename}@:@{line:MBIERROR2}@ has 2 as a root while communicator MPI_COMM_WORLD requires ranks in range 0 to 1.'
    replace['change_arg'] = 'root = nprocs; /* MBIERROR1 */'
    gen.make_file(template, f'InvalidParam_RootTooLarge_{c}_nok.c', replace)


##################################
# Generate code with type mismatch
##################################

for c in gen.coll + gen.icoll:
    if c != 'MPI_Barrier': # Barrier has no Data to mismatch or to nullify
        patterns = {}
        patterns = {'c': c}
        patterns['generatedby'] = f'DO NOT EDIT: this file was generated by {os.path.basename(sys.argv[0])}. DO NOT EDIT.'
        patterns['collfeature'] = 'Yes' if c in gen.coll else 'Lacking'
        patterns['icollfeature'] = 'Yes' if c in gen.icoll + gen.ibarrier else 'Lacking'
        patterns['toolfeature'] = 'Lacking'
        patterns['c'] = c
        patterns['init'] = gen.init[c]("1")
        patterns['start'] = gen.start[c]("1")
        patterns['fini'] = gen.fini[c]("1")
        patterns['operation'] = gen.operation[c]("1")
        patterns['free'] = gen.free[c]("1")
        patterns['change_arg'] = ''

        # Generate the incorrect matching (datatype Mmismatch)
        replace = patterns.copy()
        replace['shortdesc'] = 'Collective @{c}@ with a datatype mismatch'
        replace['longdesc'] = 'Odd ranks use MPI_INT as the datatype while even ranks use MPI_FLOAT'
        replace['outcome'] = 'ERROR: DatatypeMatching'
        replace['errormsg'] = 'Collective datatype mistmatch. @{c}@ at @{filename}@:@{line:MBIERROR2}@ has MPI_INT or MPI_FLOAT as a datatype.'
        replace['change_arg'] = 'if (rank % 2)\n    type = MPI_FLOAT; /* MBIERROR1 */'
        gen.make_file(template, f'ParamMatching_Data_{c}_nok.c', replace)

        # Generate the call with null type (invalid datatype)
        replace = patterns.copy()
        replace['shortdesc'] = 'Collective @{c}@ with an invalid datatype '
        replace['longdesc'] = 'Collective @{c}@ with an invalid datatype '
        replace['outcome'] = 'ERROR: InvalidDatatype'
        replace['errormsg'] = 'Invalid Datatype. @{c}@ at @{filename}@:@{line:MBIERROR2}@ has an invalid datatype.'
        replace['change_arg'] = 'type=MPI_DATATYPE_NULL; /* MBIERROR1 */'
        gen.make_file(template, f'InvalidParam_DataNull_{c}_nok.c', replace)


##################################
# Generate code with Op  mismatch
##################################

for c in gen.coll4op + gen.icoll4op:
    patterns = {}
    patterns = {'c': c}
    patterns['generatedby'] = f'DO NOT EDIT: this file was generated by {os.path.basename(sys.argv[0])}. DO NOT EDIT.'
    patterns['collfeature'] = 'Yes' if c in  gen.coll4op else 'Lacking'
    patterns['icollfeature'] = 'Yes' if c in gen.icoll4op else 'Lacking'
    patterns['toolfeature'] = 'Lacking'
    patterns['c'] = c
    patterns['init'] = gen.init[c]("1")
    patterns['start'] = gen.start[c]("1")
    patterns['fini'] = gen.fini[c]("1")
    patterns['operation'] = gen.operation[c]("1")
    patterns['free'] = gen.free[c]("1")
    patterns['change_arg'] = ''

    # Generate the incorrect matching (op mismatch)
    replace = patterns.copy()
    replace['shortdesc'] = 'Collective @{c}@ with an operator  mismatch'
    replace['longdesc'] = 'Odd ranks use MPI_SUM as the operator while even ranks use MPI_MAX'
    replace['outcome'] = 'ERROR: OperatorMatching'
    replace['errormsg'] = 'Collective operator mistmatch. @{c}@ at @{filename}@:@{line:MBIERROR2}@ has MPI_MAX or MPI_SUM as an operator.'
    replace['change_arg'] = 'if (rank % 2)\n    op = MPI_MAX; /* MBIERROR1 */'
    gen.make_file(template, f'ParamMatching_Op_{c}_nok.c', replace)

    # Generate the call with Op=MPI_OP_NULL (invalid op)
    replace = patterns.copy()
    replace['shortdesc'] = 'Collective @{c}@ with an invalid operator '
    replace['longdesc'] = 'Collective @{c}@ with an invalid operator '
    replace['outcome'] = 'ERROR: InvalidOperator'
    replace['errormsg'] = 'Invalid Operator. @{c}@ at @{filename}@:@{line:MBIERROR2}@ has MPI_OP_NULL as an operator.'
    replace['change_arg'] = 'op = MPI_OP_NULL; /* MBIERROR1 */'
    gen.make_file(template, f'InvalidParam_OpNull_{c}_nok.c', replace)
