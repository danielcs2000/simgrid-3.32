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

# Utility rule file for platf_cpp.

# Include any custom commands dependencies for this target.
include examples/platforms/CMakeFiles/platf_cpp.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/platforms/CMakeFiles/platf_cpp.dir/progress.make

platf_cpp: examples/platforms/CMakeFiles/platf_cpp.dir/build.make
.PHONY : platf_cpp

# Rule to build all files generated by this target.
examples/platforms/CMakeFiles/platf_cpp.dir/build: platf_cpp
.PHONY : examples/platforms/CMakeFiles/platf_cpp.dir/build

examples/platforms/CMakeFiles/platf_cpp.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms && $(CMAKE_COMMAND) -P CMakeFiles/platf_cpp.dir/cmake_clean.cmake
.PHONY : examples/platforms/CMakeFiles/platf_cpp.dir/clean

examples/platforms/CMakeFiles/platf_cpp.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms/CMakeFiles/platf_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/platforms/CMakeFiles/platf_cpp.dir/depend

