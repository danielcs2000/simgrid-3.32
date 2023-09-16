# CMake generated Testfile for 
# Source directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator
# Build directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(graphicator "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--setenv" "srcdir=/home/daniel.rojas/myApps/sources/simgrid-3.32" "--setenv" "bindir=/home/daniel.rojas/myApps/sources/simgrid-3.32/bin" "--setenv" "libdir=/home/daniel.rojas/myApps/sources/simgrid-3.32/lib" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator" "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator/graphicator.tesh")
set_tests_properties(graphicator PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator/CMakeLists.txt;5;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/graphicator/CMakeLists.txt;0;")
