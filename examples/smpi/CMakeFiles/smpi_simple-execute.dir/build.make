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
include examples/smpi/CMakeFiles/smpi_simple-execute.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/smpi/CMakeFiles/smpi_simple-execute.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/smpi/CMakeFiles/smpi_simple-execute.dir/progress.make

# Include the compile flags for this target's objects.
include examples/smpi/CMakeFiles/smpi_simple-execute.dir/flags.make

examples/smpi/CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o: examples/smpi/CMakeFiles/smpi_simple-execute.dir/flags.make
examples/smpi/CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o: examples/smpi/simple-execute/simple-execute.c
examples/smpi/CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o: examples/smpi/CMakeFiles/smpi_simple-execute.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/smpi/CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/smpi/CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o -MF CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o.d -o CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/simple-execute/simple-execute.c

examples/smpi/CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/simple-execute/simple-execute.c > CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.i

examples/smpi/CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/simple-execute/simple-execute.c -o CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.s

# Object files for target smpi_simple-execute
smpi_simple__execute_OBJECTS = \
"CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o"

# External object files for target smpi_simple-execute
smpi_simple__execute_EXTERNAL_OBJECTS =

examples/smpi/simple-execute/smpi_simple-execute: examples/smpi/CMakeFiles/smpi_simple-execute.dir/simple-execute/simple-execute.c.o
examples/smpi/simple-execute/smpi_simple-execute: examples/smpi/CMakeFiles/smpi_simple-execute.dir/build.make
examples/smpi/simple-execute/smpi_simple-execute: lib/libsimgrid.so.3.32
examples/smpi/simple-execute/smpi_simple-execute: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
examples/smpi/simple-execute/smpi_simple-execute: examples/smpi/CMakeFiles/smpi_simple-execute.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable simple-execute/smpi_simple-execute"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smpi_simple-execute.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/smpi/CMakeFiles/smpi_simple-execute.dir/build: examples/smpi/simple-execute/smpi_simple-execute
.PHONY : examples/smpi/CMakeFiles/smpi_simple-execute.dir/build

examples/smpi/CMakeFiles/smpi_simple-execute.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi && $(CMAKE_COMMAND) -P CMakeFiles/smpi_simple-execute.dir/cmake_clean.cmake
.PHONY : examples/smpi/CMakeFiles/smpi_simple-execute.dir/clean

examples/smpi/CMakeFiles/smpi_simple-execute.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/CMakeFiles/smpi_simple-execute.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/smpi/CMakeFiles/smpi_simple-execute.dir/depend

