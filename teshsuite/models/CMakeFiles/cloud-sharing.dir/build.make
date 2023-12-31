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
include teshsuite/models/CMakeFiles/cloud-sharing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include teshsuite/models/CMakeFiles/cloud-sharing.dir/compiler_depend.make

# Include the progress variables for this target.
include teshsuite/models/CMakeFiles/cloud-sharing.dir/progress.make

# Include the compile flags for this target's objects.
include teshsuite/models/CMakeFiles/cloud-sharing.dir/flags.make

teshsuite/models/CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o: teshsuite/models/CMakeFiles/cloud-sharing.dir/flags.make
teshsuite/models/CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o: teshsuite/models/cloud-sharing/cloud-sharing.cpp
teshsuite/models/CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o: teshsuite/models/CMakeFiles/cloud-sharing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object teshsuite/models/CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT teshsuite/models/CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o -MF CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o.d -o CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models/cloud-sharing/cloud-sharing.cpp

teshsuite/models/CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models/cloud-sharing/cloud-sharing.cpp > CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.i

teshsuite/models/CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models/cloud-sharing/cloud-sharing.cpp -o CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.s

# Object files for target cloud-sharing
cloud__sharing_OBJECTS = \
"CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o"

# External object files for target cloud-sharing
cloud__sharing_EXTERNAL_OBJECTS =

teshsuite/models/cloud-sharing/cloud-sharing: teshsuite/models/CMakeFiles/cloud-sharing.dir/cloud-sharing/cloud-sharing.cpp.o
teshsuite/models/cloud-sharing/cloud-sharing: teshsuite/models/CMakeFiles/cloud-sharing.dir/build.make
teshsuite/models/cloud-sharing/cloud-sharing: lib/libsimgrid.so.3.32
teshsuite/models/cloud-sharing/cloud-sharing: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
teshsuite/models/cloud-sharing/cloud-sharing: teshsuite/models/CMakeFiles/cloud-sharing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cloud-sharing/cloud-sharing"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cloud-sharing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
teshsuite/models/CMakeFiles/cloud-sharing.dir/build: teshsuite/models/cloud-sharing/cloud-sharing
.PHONY : teshsuite/models/CMakeFiles/cloud-sharing.dir/build

teshsuite/models/CMakeFiles/cloud-sharing.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models && $(CMAKE_COMMAND) -P CMakeFiles/cloud-sharing.dir/cmake_clean.cmake
.PHONY : teshsuite/models/CMakeFiles/cloud-sharing.dir/clean

teshsuite/models/CMakeFiles/cloud-sharing.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/models/CMakeFiles/cloud-sharing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : teshsuite/models/CMakeFiles/cloud-sharing.dir/depend

