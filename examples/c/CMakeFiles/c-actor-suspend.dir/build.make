# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/apps/cmake-3.22.2/bin/cmake

# The command to remove a file.
RM = /opt/apps/cmake-3.22.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/daniel.rojas/myApps/sources/simgrid-3.32

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniel.rojas/myApps/sources/simgrid-3.32

# Include any dependencies generated for this target.
include examples/c/CMakeFiles/c-actor-suspend.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/c/CMakeFiles/c-actor-suspend.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/c/CMakeFiles/c-actor-suspend.dir/progress.make

# Include the compile flags for this target's objects.
include examples/c/CMakeFiles/c-actor-suspend.dir/flags.make

examples/c/CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o: examples/c/CMakeFiles/c-actor-suspend.dir/flags.make
examples/c/CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o: examples/c/actor-suspend/actor-suspend.c
examples/c/CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o: examples/c/CMakeFiles/c-actor-suspend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/c/CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c && /opt/apps/gcc-10.1.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/c/CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o -MF CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o.d -o CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c/actor-suspend/actor-suspend.c

examples/c/CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c && /opt/apps/gcc-10.1.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c/actor-suspend/actor-suspend.c > CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.i

examples/c/CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c && /opt/apps/gcc-10.1.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c/actor-suspend/actor-suspend.c -o CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.s

# Object files for target c-actor-suspend
c__actor__suspend_OBJECTS = \
"CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o"

# External object files for target c-actor-suspend
c__actor__suspend_EXTERNAL_OBJECTS =

examples/c/actor-suspend/c-actor-suspend: examples/c/CMakeFiles/c-actor-suspend.dir/actor-suspend/actor-suspend.c.o
examples/c/actor-suspend/c-actor-suspend: examples/c/CMakeFiles/c-actor-suspend.dir/build.make
examples/c/actor-suspend/c-actor-suspend: lib/libsimgrid.so.3.32
examples/c/actor-suspend/c-actor-suspend: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
examples/c/actor-suspend/c-actor-suspend: examples/c/CMakeFiles/c-actor-suspend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable actor-suspend/c-actor-suspend"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c-actor-suspend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/c/CMakeFiles/c-actor-suspend.dir/build: examples/c/actor-suspend/c-actor-suspend
.PHONY : examples/c/CMakeFiles/c-actor-suspend.dir/build

examples/c/CMakeFiles/c-actor-suspend.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c && $(CMAKE_COMMAND) -P CMakeFiles/c-actor-suspend.dir/cmake_clean.cmake
.PHONY : examples/c/CMakeFiles/c-actor-suspend.dir/clean

examples/c/CMakeFiles/c-actor-suspend.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/c/CMakeFiles/c-actor-suspend.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/c/CMakeFiles/c-actor-suspend.dir/depend

