project(test)

# 设置头文件的包含路径(不然下面add_executable(test main.cpp)中main.cpp中会找不到相应的头文件)
include_directories(${CMAKE_SOURCE_DIR}/common)

# 设置库文件的路径
set(LIB_DIR ${CMAKE_SOURCE_DIR}/lib)

# 生成可执行文件test
add_executable(test main.cpp)

# 设置test需要链接的库,不设置找不到定义
target_link_libraries(test PUBLIC 
    ${LIB_DIR}/libmath.a
    ${LIB_DIR}/liblog.so
)