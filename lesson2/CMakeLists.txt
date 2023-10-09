cmake_minimum_required(VERSION 3.10)
project(lesson2)

# 设置可执行文件的输出目录
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)

add_executable(lesson2 main.cpp)