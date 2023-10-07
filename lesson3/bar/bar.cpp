#include"bar.h"

#include<cstdio>

Bar::Bar()
{
    printf("bar %p created!\n",this);
}

Bar::~Bar()
{
    printf("bar %p destroyed!\n",this);
}