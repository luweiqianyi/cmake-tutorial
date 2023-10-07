cmake_minimum_required(VERSION 3.10)
project(lesson3 VERSION 1.0)

# 设置子目录，便于根目录下的CMakeLists.txt进行构建时能够找到子目录下的CMakeLists.txt
add_subdirectory(foo)
add_subdirectory(bar)

# 设置包含目录，这样在`main.cpp`中就可以直接使用#include"foo.h"来包含对应文件，而不需要指定文件所在相对路径(相当于visual studio 2022下的包含目录)
target_include_directories(foo PUBLIC foo)
target_include_directories(bar PUBLIC bar)

add_executable(myapp main.cpp)
target_link_libraries(myapp foo)
target_link_libraries(myapp bar)