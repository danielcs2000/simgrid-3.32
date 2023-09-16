# CMake generated Testfile for 
# Source directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker
# Build directory: /home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(smpi-s4u-masterworker-thread "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--cfg" "contexts/factory:thread" "--setenv" "srcdir=/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/s4u_smpi.tesh")
set_tests_properties(smpi-s4u-masterworker-thread PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;99;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/CMakeLists.txt;6;ADD_TESH_FACTORIES;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/CMakeLists.txt;0;")
add_test(smpi-s4u-masterworker-boost "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--cfg" "contexts/factory:boost" "--setenv" "srcdir=/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/s4u_smpi.tesh")
set_tests_properties(smpi-s4u-masterworker-boost PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;99;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/CMakeLists.txt;6;ADD_TESH_FACTORIES;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/CMakeLists.txt;0;")
add_test(smpi-s4u-masterworker-raw "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--cfg" "contexts/factory:raw" "--setenv" "srcdir=/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/s4u_smpi.tesh")
set_tests_properties(smpi-s4u-masterworker-raw PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;99;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/CMakeLists.txt;6;ADD_TESH_FACTORIES;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/CMakeLists.txt;0;")
add_test(smpi-s4u-masterworker-ucontext "/usr/bin/python3.6" "/home/daniel.rojas/myApps/sources/simgrid-3.32/bin/tesh" "--ignore-jenkins" "--cfg" "contexts/factory:ucontext" "--setenv" "srcdir=/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker" "--cd" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker" "/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/s4u_smpi.tesh")
set_tests_properties(smpi-s4u-masterworker-ucontext PROPERTIES  _BACKTRACE_TRIPLES "/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;49;ADD_TEST;/home/daniel.rojas/myApps/sources/simgrid-3.32/tools/cmake/Tests.cmake;99;ADD_TESH;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/CMakeLists.txt;6;ADD_TESH_FACTORIES;/home/daniel.rojas/myApps/sources/simgrid-3.32/examples/smpi/smpi_s4u_masterworker/CMakeLists.txt;0;")
