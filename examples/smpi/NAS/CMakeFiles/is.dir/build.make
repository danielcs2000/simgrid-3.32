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
include examples/smpi/NAS/CMakeFiles/is.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/smpi/NAS/CMakeFiles/is.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/smpi/NAS/CMakeFiles/is.dir/progress.make

# Include the compile flags for this target's objects.
include examples/smpi/NAS/CMakeFiles/is.dir/flags.make

examples/smpi/NAS/CMakeFiles/is.dir/is.c.o: examples/smpi/NAS/CMakeFiles/is.dir/flags.make
examples/smpi/NAS/CMakeFiles/is.dir/is.c.o: examples/smpi/NAS/is.c
examples/smpi/NAS/CMakeFiles/is.dir/is.c.o: examples/smpi/NAS/CMakeFiles/is.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/smpi/NAS/CMakeFiles/is.dir/is.c.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/smpi/NAS/CMakeFiles/is.dir/is.c.o -MF CMakeFiles/is.dir/is.c.o.d -o CMakeFiles/is.dir/is.c.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/is.c

examples/smpi/NAS/CMakeFiles/is.dir/is.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/is.dir/is.c.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/is.c > CMakeFiles/is.dir/is.c.i

examples/smpi/NAS/CMakeFiles/is.dir/is.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/is.dir/is.c.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/is.c -o CMakeFiles/is.dir/is.c.s

examples/smpi/NAS/CMakeFiles/is.dir/nas_common.c.o: examples/smpi/NAS/CMakeFiles/is.dir/flags.make
examples/smpi/NAS/CMakeFiles/is.dir/nas_common.c.o: examples/smpi/NAS/nas_common.c
examples/smpi/NAS/CMakeFiles/is.dir/nas_common.c.o: examples/smpi/NAS/CMakeFiles/is.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object examples/smpi/NAS/CMakeFiles/is.dir/nas_common.c.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/smpi/NAS/CMakeFiles/is.dir/nas_common.c.o -MF CMakeFiles/is.dir/nas_common.c.o.d -o CMakeFiles/is.dir/nas_common.c.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/nas_common.c

examples/smpi/NAS/CMakeFiles/is.dir/nas_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/is.dir/nas_common.c.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/nas_common.c > CMakeFiles/is.dir/nas_common.c.i

examples/smpi/NAS/CMakeFiles/is.dir/nas_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/is.dir/nas_common.c.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/nas_common.c -o CMakeFiles/is.dir/nas_common.c.s

# Object files for target is
is_OBJECTS = \
"CMakeFiles/is.dir/is.c.o" \
"CMakeFiles/is.dir/nas_common.c.o"

# External object files for target is
is_EXTERNAL_OBJECTS =

examples/smpi/NAS/is: examples/smpi/NAS/CMakeFiles/is.dir/is.c.o
examples/smpi/NAS/is: examples/smpi/NAS/CMakeFiles/is.dir/nas_common.c.o
examples/smpi/NAS/is: examples/smpi/NAS/CMakeFiles/is.dir/build.make
examples/smpi/NAS/is: lib/libsimgrid.so.3.32
examples/smpi/NAS/is: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
examples/smpi/NAS/is: examples/smpi/NAS/CMakeFiles/is.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable is"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/is.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/smpi/NAS/CMakeFiles/is.dir/build: examples/smpi/NAS/is
.PHONY : examples/smpi/NAS/CMakeFiles/is.dir/build

examples/smpi/NAS/CMakeFiles/is.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && $(CMAKE_COMMAND) -P CMakeFiles/is.dir/cmake_clean.cmake
.PHONY : examples/smpi/NAS/CMakeFiles/is.dir/clean

examples/smpi/NAS/CMakeFiles/is.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/CMakeFiles/is.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/smpi/NAS/CMakeFiles/is.dir/depend

