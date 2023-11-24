cmake_minimum_required(VERSION 3.20)
PROJECT(hello)

# 设置一个变量，代表其包含的源文件
SET(LIBHELLO_SRC src/hello.cpp)
# 生成一个叫libhello.so的动态库文件，${LIBHELLO_SRC}指向生成该库文件的源码文件
ADD_LIBRARY(hello SHARED ${LIBHELLO_SRC})
# 设置libhello.so包的版本是1.2，API版本版本是1, 最终会<多>生成libhello.so.1.2和libhello.so.1两个文件
SET_TARGET_PROPERTIES(hello PROPERTIES VERSION 1.2 SOVERSION 1)

# 生成一个叫libhello_static.a的静态库文件，${LIBHELLO_SRC}指向生成该库文件的源码文件
ADD_LIBRARY(hello_static STATIC ${LIBHELLO_SRC})#上面已经定义了一个hello的库名称了，这里不能再用hello了，需要改个名字，后面再指定输出的静态文件名字即可
# 设置静态文件的输出名为libhello.a而不是libhello_static.a
SET_TARGET_PROPERTIES(hello_static PROPERTIES OUTPUT_NAME "hello")

# 生成一个叫main的可执行文件，生成它需要的源码文件为main.cpp
add_executable(main src/main.cpp)
# 指定可执行文件main需要链接一个叫做hello的库，其本质是需要链接libhello.so，若需要显式指定链接静态库，需要用：target_link_libraries(main hello_static)
# target_link_libraries(main hello_static) # 可以在build目录下用“ldd ./main”来查看本指令和下一行指令构建出来的可执行文件main的链接动态库的差别 
target_link_libraries(main hello)

############################## 以下纯粹是“make install指令执行时，相关文件要被安装到哪个位置去”的相关配置 ##############################
# cmake -DCMAKE_INSTALL_PREFIX=/home/ubuntu/cmake-tutorial/base-tutorial/install ..
# 执行上面命令构建时，CMAKE_INSTALL_PREFIX属性指定了安装了基础路径
INSTALL(TARGETS main hello hello_static 
    RUNTIME DESTINATION bin # 设置可执行文件的安装目录，最终路径为/home/ubuntu/cmake-tutorial/base-tutorial/install/bin
    LIBRARY DESTINATION lib # 设置动态库的安装路径，最终路径为/home/ubuntu/cmake-tutorial/base-tutorial/install/lib
    ARCHIVE DESTINATION lib) # 设置静态库的安装路径，最终路径为/home/ubuntu/cmake-tutorial/base-tutorial/install/lib

# 使用file(GLOB ...)获取要安装到目的地的头文件列表
file(GLOB HEADER_FILES
    "src/*.h" # 取的是src目录下的所有头文件
)
# 指定上面获取的头文件全部安装到目的路径，目的路径为/home/ubuntu/cmake-tutorial/base-tutorial/install/include/hello
INSTALL(FILES ${HEADER_FILES} DESTINATION include/hello)
# 指定COPYRIGHT.txt README.md两个文件安装到/home/ubuntu/cmake-tutorial/base-tutorial/install路径下
INSTALL(FILES COPYRIGHT.txt README.md DESTINATION .)
# 指定目录docs安装到/home/ubuntu/cmake-tutorial/base-tutorial/install/docs路径下
INSTALL(DIRECTORY docs/ DESTINATION docs)
# 指定build.sh runhello.sh两个脚本文件安装到/home/ubuntu/cmake-tutorial/base-tutorial/install路径下
INSTALL(PROGRAMS build.sh runhello.sh DESTINATION .)
