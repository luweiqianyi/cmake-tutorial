#include"foo.h"

#include <cstdio>
Foo::Foo()
{
    printf("foo %p created!\n",this);
}

Foo::~Foo()
{
    printf("foo %p destroyed!\n",this);
}