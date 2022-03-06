cmake_minimum_required(VERSION 3.14)
project(service)

set(CMAKE_CXX_STANDARD 14)

add_executable(service main.cpp logger.cpp logger.h)