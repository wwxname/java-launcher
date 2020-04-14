//
// Created by wwx on 19-3-23.
//
#include "J2C.h"

JNIEXPORT jint JNICALL Java_J2C_write2proc
        (JNIEnv * env, jclass clazz, jlong pid){
    jint version = (*env)->GetVersion(env);
    jclass pclazz  =  (*env)->GetSuperclass(env,clazz);
    printf("env is %p \n",env);
    printf("clazz is %p \n",&clazz);
    printf("version is %d \n",version);
    printf("pclazz is %p \n",&pclazz);
    printf("process id is %ld . \n",pid);
}


