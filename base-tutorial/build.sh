# 在build目录上级目录执行下面这行
# 执行前如果发现cmake没有安装，则可以执行命令`sudo apt install cmake`安装,执行成功后，cmake会安装在系统默认路径
# 即可完成项目构建
cd build && cmake -DCMAKE_INSTALL_PREFIX=/home/ubuntu/cmake-tutorial/base-tutorial/install ..

# # 在build目录下执行下面这行
# cmake -DCMAKE_INSTALL_PREFIX=/home/ubuntu/cmake-tutorial/base-tutorial/install ..

# 执行下面这行命令生成可执行文件或者库文件
make

# 执行下面这行命令将CMakeLists.txt中INSTALL指令指定的目标安装到目的位置
make install