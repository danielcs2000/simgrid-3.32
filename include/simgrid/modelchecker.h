/* simgrid/modelchecker.h - Formal Verification made possible in SimGrid    */

/* Copyright (c) 2008-2022. The SimGrid Team. All rights reserved.          */

/* This program is free software; you can redistribute it and/or modify it
 * under the terms of the license (GNU LGPL) which comes with this package. */

#ifndef SIMGRID_MODELCHECKER_H
#define SIMGRID_MODELCHECKER_H

#include <simgrid/config.h> /* SIMGRID_HAVE_MC ? */
#include <xbt/base.h>

#include <stddef.h> /* size_t */

SG_BEGIN_DECL

/** Explore every branches where that function returns a value between min and max (inclusive) */
XBT_PUBLIC int MC_random(int min, int max);

#if SIMGRID_HAVE_MC

/* Internal variable used to check if we're running under the MC. Please use MC_is_active instead. */
extern XBT_PUBLIC int _sg_do_model_check;
extern XBT_PUBLIC int _sg_mc_max_visited_states;

#define MC_is_active()         _sg_do_model_check
#define MC_visited_reduction() _sg_mc_max_visited_states

/** Assertion for the model-checker
 *
 *  This function is used to define safety properties to verify.
 */
XBT_PUBLIC void MC_assert(int);

XBT_PUBLIC void MC_automaton_new_propositional_symbol(const char* id, int (*fct)(void));
XBT_PUBLIC void MC_automaton_new_propositional_symbol_pointer(const char* id, int* value);

XBT_PUBLIC void MC_ignore(void* addr, size_t size);
XBT_PUBLIC void MC_ignore_heap(void* address, size_t size);
XBT_PUBLIC void MC_unignore_heap(void* address, size_t size);

#else

#define MC_is_active()                  0
#define MC_visited_reduction()          0

#define MC_assert(a)                    xbt_assert(a)

#define MC_automaton_new_propositional_symbol(a, b) ((void)0)
#define MC_automaton_new_propositional_symbol_pointer(a, b) ((void)0)

#define MC_ignore(a, b) ((void)0)
#define MC_ignore_heap(a, s) ((void)0)
#define MC_unignore_heap(a, s) ((void)0)

#endif

SG_END_DECL

#endif /* SIMGRID_MODELCHECKER_H */
