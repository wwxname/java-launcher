//
// Created by wwx on 19-3-23.
//
void say(){
    printf("hello world\n");
}
struct Person{
    int i;
    char * name;
    void (*say)();

}Person;
#include <jni.h>
#include <stdlib.h>

JNIEnv* create_vm(JavaVM **jvm)
{
    struct Person* person=(struct Person *)malloc(sizeof(Person));
    person->say=say;
    person->say();
    (*person).say();

    JNIEnv* env;
    JavaVMInitArgs args;
    JavaVMOption options;
    args.version = JNI_VERSION_1_6;
    args.nOptions = 1;
    options.optionString ="-Djava.class.path=./";
    args.options = &options;
    args.ignoreUnrecognized = 0;
    int rv;
    rv = JNI_CreateJavaVM(jvm,(void**)&env, &args);
    if (rv < 0 || !env)
        printf("Unable to Launch JVM%d\n",rv);
    else
        printf("Launched JVM! (>.<) \n");
    return env;
}


void invoke_class(JNIEnv* env)
{
    jclass demo;
    jmethodID main_method;
//    jmethodID square_method;
//    jmethodID power_method;
    jint number=20;
    jint exponent=3;
    demo =(*env)->FindClass(env, "Demo");
    main_method =(*env)->GetStaticMethodID(env, demo, "main","([Ljava/lang/String;)V");
//    square_method =(*env)->GetStaticMethodID(env, hello_world_class, "square","(I)I");
//    power_method =(*env)->GetStaticMethodID(env, hello_world_class, "power","(II)I");
    (*env)->CallStaticVoidMethod(env,demo, main_method, NULL);
//    printf("%d squared is %d\n",number,
//           (*env)->CallStaticIntMethod(env,hello_world_class, square_method, number));
//    printf("%d raised to the %d power is%d\n", number, exponent,
//           (*env)->CallStaticIntMethod(env,hello_world_class, power_method, number, exponent));
}


int main(int argc,char **argv)
{
    JavaVM *jvm;
    JNIEnv *env;
    env = create_vm(&jvm);
    if(env == NULL)
        return 1;
    invoke_class(env);
    return 0;
}
