# CMake generated Testfile for 
# Source directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/mc
# Build directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/mc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(mc-random-bug-replay "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--setenv" "platfdir=/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/platforms" "--setenv" "bindir=/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/mc/random-bug" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/mc/random-bug" "random-bug-replay.tesh")
set_tests_properties(mc-random-bug-replay PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/mc/CMakeLists.txt;57;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/mc/CMakeLists.txt;0;")
