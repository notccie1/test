cmake_minimum_required(VERSION 3.5)

project("test" CXX)
set(My_VERSION_MAJOR 0)
set(My_VERSION_MINOR 1)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/CMakeModules/ )

include(CTest)
add_subdirectory(tests/)
add_subdirectory(src/)

