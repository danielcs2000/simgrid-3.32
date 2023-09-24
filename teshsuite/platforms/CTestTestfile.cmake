# CMake generated Testfile for 
# Source directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms
# Build directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(tesh-platform-flatifier "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--setenv" "bindir=/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms" "--setenv" "srcdir=/home/daniel.rojas/myApps/sources/simgrid-3.32" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms" "flatifier.tesh")
set_tests_properties(tesh-platform-flatifier PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms/CMakeLists.txt;44;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms/CMakeLists.txt;0;")
add_test(tesh-parser-bogus-symmetric "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--setenv" "bindir=/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms" "/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms/bogus_two_hosts_asymetric.tesh")
set_tests_properties(tesh-parser-bogus-symmetric PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms/CMakeLists.txt;48;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms/CMakeLists.txt;0;")
add_test(tesh-parser-bogus-missing-gw "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--setenv" "bindir=/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms" "/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms/bogus_missing_gateway.tesh")
set_tests_properties(tesh-parser-bogus-missing-gw PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms/CMakeLists.txt;49;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/teshsuite/platforms/CMakeLists.txt;0;")