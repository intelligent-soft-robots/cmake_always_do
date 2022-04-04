cmake_minimum_required(VERSION 3.10.2)

project(cmake_always_do)

find_package(ament_cmake REQUIRED)

# replacing in ./cmake/always_do.cmake.in @always_do_path@ 
# by /abs/path/to/always_do/ in order to generate
# ./cake/always_do.cmake.
set(always_do_path ${CMAKE_CURRENT_SOURCE_DIR})
set(always_do_cmake_template ${CMAKE_CURRENT_SOURCE_DIR}/cmake/always_do.cmake.in) 
set(always_do_cmake ${CMAKE_CURRENT_SOURCE_DIR}/cmake/always_do.cmake) 
configure_file(${always_do_cmake_template}
  ${always_do_cmake} @ONLY)

ament_package(CONFIG_EXTRAS ${always_do_cmake})
