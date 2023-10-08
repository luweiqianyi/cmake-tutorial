#include"log.h"
#include<cstdio>

CLog::CLog()
{
    printf("CLog[%p] created!\n",this);
}

CLog::~CLog()
{
    printf("CLog[%p] destroyed!\n",this);
}