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
include examples/cpp/CMakeFiles/s4u-io-dependent.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/cpp/CMakeFiles/s4u-io-dependent.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/cpp/CMakeFiles/s4u-io-dependent.dir/progress.make

# Include the compile flags for this target's objects.
include examples/cpp/CMakeFiles/s4u-io-dependent.dir/flags.make

examples/cpp/CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o: examples/cpp/CMakeFiles/s4u-io-dependent.dir/flags.make
examples/cpp/CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o: examples/cpp/io-dependent/s4u-io-dependent.cpp
examples/cpp/CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o: examples/cpp/CMakeFiles/s4u-io-dependent.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/cpp/CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/cpp/CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o -MF CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o.d -o CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp/io-dependent/s4u-io-dependent.cpp

examples/cpp/CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp/io-dependent/s4u-io-dependent.cpp > CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.i

examples/cpp/CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp/io-dependent/s4u-io-dependent.cpp -o CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.s

# Object files for target s4u-io-dependent
s4u__io__dependent_OBJECTS = \
"CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o"

# External object files for target s4u-io-dependent
s4u__io__dependent_EXTERNAL_OBJECTS =

examples/cpp/io-dependent/s4u-io-dependent: examples/cpp/CMakeFiles/s4u-io-dependent.dir/io-dependent/s4u-io-dependent.cpp.o
examples/cpp/io-dependent/s4u-io-dependent: examples/cpp/CMakeFiles/s4u-io-dependent.dir/build.make
examples/cpp/io-dependent/s4u-io-dependent: lib/libsimgrid.so.3.32
examples/cpp/io-dependent/s4u-io-dependent: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
examples/cpp/io-dependent/s4u-io-dependent: examples/cpp/CMakeFiles/s4u-io-dependent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable io-dependent/s4u-io-dependent"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/s4u-io-dependent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/cpp/CMakeFiles/s4u-io-dependent.dir/build: examples/cpp/io-dependent/s4u-io-dependent
.PHONY : examples/cpp/CMakeFiles/s4u-io-dependent.dir/build

examples/cpp/CMakeFiles/s4u-io-dependent.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/s4u-io-dependent.dir/cmake_clean.cmake
.PHONY : examples/cpp/CMakeFiles/s4u-io-dependent.dir/clean

examples/cpp/CMakeFiles/s4u-io-dependent.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/cpp/CMakeFiles/s4u-io-dependent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/cpp/CMakeFiles/s4u-io-dependent.dir/depend

