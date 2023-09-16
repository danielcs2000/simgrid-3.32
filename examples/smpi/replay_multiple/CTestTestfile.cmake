# CMake generated Testfile for 
# Source directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/replay_multiple
# Build directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/replay_multiple
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(smpi-replay-multiple "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--setenv" "srcdir=/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/replay_multiple" "--setenv" "bindir=/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/replay_multiple" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/replay_multiple" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/replay_multiple/replay_multiple.tesh")
set_tests_properties(smpi-replay-multiple PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/replay_multiple/CMakeLists.txt;6;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/replay_multiple/CMakeLists.txt;0;")
