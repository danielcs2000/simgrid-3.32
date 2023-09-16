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
include teshsuite/smpi/CMakeFiles/io-ordered.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include teshsuite/smpi/CMakeFiles/io-ordered.dir/compiler_depend.make

# Include the progress variables for this target.
include teshsuite/smpi/CMakeFiles/io-ordered.dir/progress.make

# Include the compile flags for this target's objects.
include teshsuite/smpi/CMakeFiles/io-ordered.dir/flags.make

teshsuite/smpi/CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o: teshsuite/smpi/CMakeFiles/io-ordered.dir/flags.make
teshsuite/smpi/CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o: teshsuite/smpi/io-ordered/io-ordered.c
teshsuite/smpi/CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o: teshsuite/smpi/CMakeFiles/io-ordered.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object teshsuite/smpi/CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT teshsuite/smpi/CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o -MF CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o.d -o CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi/io-ordered/io-ordered.c

teshsuite/smpi/CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi/io-ordered/io-ordered.c > CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.i

teshsuite/smpi/CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi/io-ordered/io-ordered.c -o CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.s

# Object files for target io-ordered
io__ordered_OBJECTS = \
"CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o"

# External object files for target io-ordered
io__ordered_EXTERNAL_OBJECTS =

teshsuite/smpi/io-ordered/io-ordered: teshsuite/smpi/CMakeFiles/io-ordered.dir/io-ordered/io-ordered.c.o
teshsuite/smpi/io-ordered/io-ordered: teshsuite/smpi/CMakeFiles/io-ordered.dir/build.make
teshsuite/smpi/io-ordered/io-ordered: lib/libsimgrid.so.3.32
teshsuite/smpi/io-ordered/io-ordered: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
teshsuite/smpi/io-ordered/io-ordered: teshsuite/smpi/CMakeFiles/io-ordered.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable io-ordered/io-ordered"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/io-ordered.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
teshsuite/smpi/CMakeFiles/io-ordered.dir/build: teshsuite/smpi/io-ordered/io-ordered
.PHONY : teshsuite/smpi/CMakeFiles/io-ordered.dir/build

teshsuite/smpi/CMakeFiles/io-ordered.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi && $(CMAKE_COMMAND) -P CMakeFiles/io-ordered.dir/cmake_clean.cmake
.PHONY : teshsuite/smpi/CMakeFiles/io-ordered.dir/clean

teshsuite/smpi/CMakeFiles/io-ordered.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/smpi/CMakeFiles/io-ordered.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : teshsuite/smpi/CMakeFiles/io-ordered.dir/depend

