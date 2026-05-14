cmake_minimum_required(VERSION 3.16)

project(pangolin_consumer LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(Pangolin CONFIG REQUIRED)

add_executable(pangolin_consumer main.cpp)
target_link_libraries(pangolin_consumer PRIVATE pango_core)

enable_testing()
add_test(NAME pangolin_consumer COMMAND pangolin_consumer)
