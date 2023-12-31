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
include examples/smpi/NAS/CMakeFiles/dt.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/smpi/NAS/CMakeFiles/dt.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/smpi/NAS/CMakeFiles/dt.dir/progress.make

# Include the compile flags for this target's objects.
include examples/smpi/NAS/CMakeFiles/dt.dir/flags.make

examples/smpi/NAS/CMakeFiles/dt.dir/dt.c.o: examples/smpi/NAS/CMakeFiles/dt.dir/flags.make
examples/smpi/NAS/CMakeFiles/dt.dir/dt.c.o: examples/smpi/NAS/dt.c
examples/smpi/NAS/CMakeFiles/dt.dir/dt.c.o: examples/smpi/NAS/CMakeFiles/dt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/smpi/NAS/CMakeFiles/dt.dir/dt.c.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/smpi/NAS/CMakeFiles/dt.dir/dt.c.o -MF CMakeFiles/dt.dir/dt.c.o.d -o CMakeFiles/dt.dir/dt.c.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/dt.c

examples/smpi/NAS/CMakeFiles/dt.dir/dt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dt.dir/dt.c.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/dt.c > CMakeFiles/dt.dir/dt.c.i

examples/smpi/NAS/CMakeFiles/dt.dir/dt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dt.dir/dt.c.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/dt.c -o CMakeFiles/dt.dir/dt.c.s

examples/smpi/NAS/CMakeFiles/dt.dir/nas_common.c.o: examples/smpi/NAS/CMakeFiles/dt.dir/flags.make
examples/smpi/NAS/CMakeFiles/dt.dir/nas_common.c.o: examples/smpi/NAS/nas_common.c
examples/smpi/NAS/CMakeFiles/dt.dir/nas_common.c.o: examples/smpi/NAS/CMakeFiles/dt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object examples/smpi/NAS/CMakeFiles/dt.dir/nas_common.c.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/smpi/NAS/CMakeFiles/dt.dir/nas_common.c.o -MF CMakeFiles/dt.dir/nas_common.c.o.d -o CMakeFiles/dt.dir/nas_common.c.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/nas_common.c

examples/smpi/NAS/CMakeFiles/dt.dir/nas_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dt.dir/nas_common.c.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/nas_common.c > CMakeFiles/dt.dir/nas_common.c.i

examples/smpi/NAS/CMakeFiles/dt.dir/nas_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dt.dir/nas_common.c.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/nas_common.c -o CMakeFiles/dt.dir/nas_common.c.s

examples/smpi/NAS/CMakeFiles/dt.dir/DGraph.c.o: examples/smpi/NAS/CMakeFiles/dt.dir/flags.make
examples/smpi/NAS/CMakeFiles/dt.dir/DGraph.c.o: examples/smpi/NAS/DGraph.c
examples/smpi/NAS/CMakeFiles/dt.dir/DGraph.c.o: examples/smpi/NAS/CMakeFiles/dt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object examples/smpi/NAS/CMakeFiles/dt.dir/DGraph.c.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/smpi/NAS/CMakeFiles/dt.dir/DGraph.c.o -MF CMakeFiles/dt.dir/DGraph.c.o.d -o CMakeFiles/dt.dir/DGraph.c.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/DGraph.c

examples/smpi/NAS/CMakeFiles/dt.dir/DGraph.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dt.dir/DGraph.c.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/DGraph.c > CMakeFiles/dt.dir/DGraph.c.i

examples/smpi/NAS/CMakeFiles/dt.dir/DGraph.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dt.dir/DGraph.c.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && /home/daniel.rojas/myApps/sources/simgrid-3.32/smpi_script/bin/smpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/DGraph.c -o CMakeFiles/dt.dir/DGraph.c.s

# Object files for target dt
dt_OBJECTS = \
"CMakeFiles/dt.dir/dt.c.o" \
"CMakeFiles/dt.dir/nas_common.c.o" \
"CMakeFiles/dt.dir/DGraph.c.o"

# External object files for target dt
dt_EXTERNAL_OBJECTS =

examples/smpi/NAS/dt: examples/smpi/NAS/CMakeFiles/dt.dir/dt.c.o
examples/smpi/NAS/dt: examples/smpi/NAS/CMakeFiles/dt.dir/nas_common.c.o
examples/smpi/NAS/dt: examples/smpi/NAS/CMakeFiles/dt.dir/DGraph.c.o
examples/smpi/NAS/dt: examples/smpi/NAS/CMakeFiles/dt.dir/build.make
examples/smpi/NAS/dt: lib/libsimgrid.so.3.32
examples/smpi/NAS/dt: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
examples/smpi/NAS/dt: examples/smpi/NAS/CMakeFiles/dt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable dt"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/smpi/NAS/CMakeFiles/dt.dir/build: examples/smpi/NAS/dt
.PHONY : examples/smpi/NAS/CMakeFiles/dt.dir/build

examples/smpi/NAS/CMakeFiles/dt.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS && $(CMAKE_COMMAND) -P CMakeFiles/dt.dir/cmake_clean.cmake
.PHONY : examples/smpi/NAS/CMakeFiles/dt.dir/clean

examples/smpi/NAS/CMakeFiles/dt.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/NAS/CMakeFiles/dt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/smpi/NAS/CMakeFiles/dt.dir/depend

