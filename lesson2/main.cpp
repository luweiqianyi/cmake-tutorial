#include<cstdio>
#include <chrono>
#include <thread>

int main()
{
    printf("Hello world\n");

    int i=0;
    while (true)
    {
       printf("%d\n",i++);

         std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    }
    
    return 0;
}