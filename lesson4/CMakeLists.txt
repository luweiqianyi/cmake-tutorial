cmake_minimum_required(VERSION 3.10)
project(lesson4)

# 设置可执行文件的生成目录(这里在顶层CMakeLists.txt中设置，则对整个工程有效，子目录中的CMakeLists.txt可以省略以下两行配置)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)

# 以下三行指定要进行build的目录
add_subdirectory(client client)# 第一个client是目录名, 第二个client是工程名
add_subdirectory(server server)
add_subdirectory(common ${PROJECT_NAME})