cmake_minimum_required(VERSION 3.0)
project(assembler C)

set(CMAKE_C_STANDARD 11)

include_directories(include)
file(GLOB SOURCES "src/*.c")
add_executable(assemble ${SOURCES})
