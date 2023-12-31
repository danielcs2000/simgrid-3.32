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
include teshsuite/surf/CMakeFiles/surf_usage.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include teshsuite/surf/CMakeFiles/surf_usage.dir/compiler_depend.make

# Include the progress variables for this target.
include teshsuite/surf/CMakeFiles/surf_usage.dir/progress.make

# Include the compile flags for this target's objects.
include teshsuite/surf/CMakeFiles/surf_usage.dir/flags.make

teshsuite/surf/CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o: teshsuite/surf/CMakeFiles/surf_usage.dir/flags.make
teshsuite/surf/CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o: teshsuite/surf/surf_usage/surf_usage.cpp
teshsuite/surf/CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o: teshsuite/surf/CMakeFiles/surf_usage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object teshsuite/surf/CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT teshsuite/surf/CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o -MF CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o.d -o CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf/surf_usage/surf_usage.cpp

teshsuite/surf/CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf/surf_usage/surf_usage.cpp > CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.i

teshsuite/surf/CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf/surf_usage/surf_usage.cpp -o CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.s

# Object files for target surf_usage
surf_usage_OBJECTS = \
"CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o"

# External object files for target surf_usage
surf_usage_EXTERNAL_OBJECTS =

teshsuite/surf/surf_usage/surf_usage: teshsuite/surf/CMakeFiles/surf_usage.dir/surf_usage/surf_usage.cpp.o
teshsuite/surf/surf_usage/surf_usage: teshsuite/surf/CMakeFiles/surf_usage.dir/build.make
teshsuite/surf/surf_usage/surf_usage: lib/libsimgrid.so.3.32
teshsuite/surf/surf_usage/surf_usage: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
teshsuite/surf/surf_usage/surf_usage: teshsuite/surf/CMakeFiles/surf_usage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable surf_usage/surf_usage"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/surf_usage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
teshsuite/surf/CMakeFiles/surf_usage.dir/build: teshsuite/surf/surf_usage/surf_usage
.PHONY : teshsuite/surf/CMakeFiles/surf_usage.dir/build

teshsuite/surf/CMakeFiles/surf_usage.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf && $(CMAKE_COMMAND) -P CMakeFiles/surf_usage.dir/cmake_clean.cmake
.PHONY : teshsuite/surf/CMakeFiles/surf_usage.dir/clean

teshsuite/surf/CMakeFiles/surf_usage.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/surf/CMakeFiles/surf_usage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : teshsuite/surf/CMakeFiles/surf_usage.dir/depend

