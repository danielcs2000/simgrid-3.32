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
include examples/platforms/CMakeFiles/supernode.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/platforms/CMakeFiles/supernode.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/platforms/CMakeFiles/supernode.dir/progress.make

# Include the compile flags for this target's objects.
include examples/platforms/CMakeFiles/supernode.dir/flags.make

examples/platforms/CMakeFiles/supernode.dir/supernode.cpp.o: examples/platforms/CMakeFiles/supernode.dir/flags.make
examples/platforms/CMakeFiles/supernode.dir/supernode.cpp.o: examples/platforms/supernode.cpp
examples/platforms/CMakeFiles/supernode.dir/supernode.cpp.o: examples/platforms/CMakeFiles/supernode.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/platforms/CMakeFiles/supernode.dir/supernode.cpp.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/platforms/CMakeFiles/supernode.dir/supernode.cpp.o -MF CMakeFiles/supernode.dir/supernode.cpp.o.d -o CMakeFiles/supernode.dir/supernode.cpp.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms/supernode.cpp

examples/platforms/CMakeFiles/supernode.dir/supernode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/supernode.dir/supernode.cpp.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms/supernode.cpp > CMakeFiles/supernode.dir/supernode.cpp.i

examples/platforms/CMakeFiles/supernode.dir/supernode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/supernode.dir/supernode.cpp.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms/supernode.cpp -o CMakeFiles/supernode.dir/supernode.cpp.s

# Object files for target supernode
supernode_OBJECTS = \
"CMakeFiles/supernode.dir/supernode.cpp.o"

# External object files for target supernode
supernode_EXTERNAL_OBJECTS =

lib/libsupernode.so: examples/platforms/CMakeFiles/supernode.dir/supernode.cpp.o
lib/libsupernode.so: examples/platforms/CMakeFiles/supernode.dir/build.make
lib/libsupernode.so: lib/libsimgrid.so.3.32
lib/libsupernode.so: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
lib/libsupernode.so: examples/platforms/CMakeFiles/supernode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libsupernode.so"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/supernode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/platforms/CMakeFiles/supernode.dir/build: lib/libsupernode.so
.PHONY : examples/platforms/CMakeFiles/supernode.dir/build

examples/platforms/CMakeFiles/supernode.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms && $(CMAKE_COMMAND) -P CMakeFiles/supernode.dir/cmake_clean.cmake
.PHONY : examples/platforms/CMakeFiles/supernode.dir/clean

examples/platforms/CMakeFiles/supernode.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms/CMakeFiles/supernode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/platforms/CMakeFiles/supernode.dir/depend

