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
include teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/compiler_depend.make

# Include the progress variables for this target.
include teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/progress.make

# Include the compile flags for this target's objects.
include teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/flags.make

teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o: teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/flags.make
teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o: teshsuite/s4u/monkey-semaphore/monkey-semaphore.cpp
teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o: teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o -MF CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o.d -o CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u/monkey-semaphore/monkey-semaphore.cpp

teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u/monkey-semaphore/monkey-semaphore.cpp > CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.i

teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u/monkey-semaphore/monkey-semaphore.cpp -o CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.s

# Object files for target monkey-semaphore
monkey__semaphore_OBJECTS = \
"CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o"

# External object files for target monkey-semaphore
monkey__semaphore_EXTERNAL_OBJECTS =

teshsuite/s4u/monkey-semaphore/monkey-semaphore: teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/monkey-semaphore/monkey-semaphore.cpp.o
teshsuite/s4u/monkey-semaphore/monkey-semaphore: teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/build.make
teshsuite/s4u/monkey-semaphore/monkey-semaphore: lib/libsimgrid.so.3.32
teshsuite/s4u/monkey-semaphore/monkey-semaphore: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
teshsuite/s4u/monkey-semaphore/monkey-semaphore: teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable monkey-semaphore/monkey-semaphore"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/monkey-semaphore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/build: teshsuite/s4u/monkey-semaphore/monkey-semaphore
.PHONY : teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/build

teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u && $(CMAKE_COMMAND) -P CMakeFiles/monkey-semaphore.dir/cmake_clean.cmake
.PHONY : teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/clean

teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : teshsuite/s4u/CMakeFiles/monkey-semaphore.dir/depend
