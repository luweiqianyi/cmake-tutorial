# 生成静态库(STATIC省略也是生成静态库，生成的文件名为libmath.a)
add_library(math STATIC math.cpp)

# 生成动态库
add_library(log SHARED log.cpp)