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
include tools/graphicator/CMakeFiles/graphicator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/graphicator/CMakeFiles/graphicator.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/graphicator/CMakeFiles/graphicator.dir/progress.make

# Include the compile flags for this target's objects.
include tools/graphicator/CMakeFiles/graphicator.dir/flags.make

tools/graphicator/CMakeFiles/graphicator.dir/graphicator.cpp.o: tools/graphicator/CMakeFiles/graphicator.dir/flags.make
tools/graphicator/CMakeFiles/graphicator.dir/graphicator.cpp.o: tools/graphicator/graphicator.cpp
tools/graphicator/CMakeFiles/graphicator.dir/graphicator.cpp.o: tools/graphicator/CMakeFiles/graphicator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/graphicator/CMakeFiles/graphicator.dir/graphicator.cpp.o"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tools/graphicator/CMakeFiles/graphicator.dir/graphicator.cpp.o -MF CMakeFiles/graphicator.dir/graphicator.cpp.o.d -o CMakeFiles/graphicator.dir/graphicator.cpp.o -c /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator/graphicator.cpp

tools/graphicator/CMakeFiles/graphicator.dir/graphicator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphicator.dir/graphicator.cpp.i"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator/graphicator.cpp > CMakeFiles/graphicator.dir/graphicator.cpp.i

tools/graphicator/CMakeFiles/graphicator.dir/graphicator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphicator.dir/graphicator.cpp.s"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator && /opt/apps/gcc-10.1.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator/graphicator.cpp -o CMakeFiles/graphicator.dir/graphicator.cpp.s

# Object files for target graphicator
graphicator_OBJECTS = \
"CMakeFiles/graphicator.dir/graphicator.cpp.o"

# External object files for target graphicator
graphicator_EXTERNAL_OBJECTS =

bin/graphicator: tools/graphicator/CMakeFiles/graphicator.dir/graphicator.cpp.o
bin/graphicator: tools/graphicator/CMakeFiles/graphicator.dir/build.make
bin/graphicator: lib/libsimgrid.so.3.32
bin/graphicator: /home/daniel.rojas/myApps/sources/boost_1_80_0/installed/lib/libboost_context.so
bin/graphicator: tools/graphicator/CMakeFiles/graphicator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel.rojas/myApps/sources/simgrid-3.32/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/graphicator"
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graphicator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/graphicator/CMakeFiles/graphicator.dir/build: bin/graphicator
.PHONY : tools/graphicator/CMakeFiles/graphicator.dir/build

tools/graphicator/CMakeFiles/graphicator.dir/clean:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator && $(CMAKE_COMMAND) -P CMakeFiles/graphicator.dir/cmake_clean.cmake
.PHONY : tools/graphicator/CMakeFiles/graphicator.dir/clean

tools/graphicator/CMakeFiles/graphicator.dir/depend:
	cd /home/daniel.rojas/myApps/sources/simgrid-3.32 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator /home/daniel.rojas/myApps/sources/simgrid-3.32 /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator/CMakeFiles/graphicator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/graphicator/CMakeFiles/graphicator.dir/depend

