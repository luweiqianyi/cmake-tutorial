/usr/bin/cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/gcc -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/g++ -S/root/code/cmake-tutorial/lesson2 -B/root/code/cmake-tutorial/lesson2/build -G "Unix Makefiles"

/usr/bin/cmake --build /root/code/cmake-tutorial/lesson2/build --config Debug --target all -j 4 --

# su root ./build.sh && rm -r build # 命令行执行该命令来构建