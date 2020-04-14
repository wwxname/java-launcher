cmake_minimum_required(VERSION 3.5)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)

add_definitions(-DGAMMA -DLINK_INTO_LIBJVM
        -DFULL_VERSION=\"24.95-b00\"
        -DJDK_MAJOR_VERSION=\"\"
        -DJDK_MINOR_VERSION=\"\"
        -DARCH=\"amd64\"
        -DLAUNCHER_TYPE=\"gamma\"
        -DTARGET_OS_FAMILY_linux
        -DTARGET_ARCH_x86
        -DTARGET_ARCH_MODEL_x86_64
        -DTARGET_OS_ARCH_linux_x86
        -DTARGET_OS_ARCH_MODEL_linux_x86_64
        -DTARGET_COMPILER_gcc -DLINUX
        -D_GNU_SOURCE -DAMD64 -DPRODUCT)
include_directories(.)
link_directories(
        lib
)
add_executable(java java.c java_md.c jli_util.c wildcard.c jni.h)
target_link_libraries(java -ljvm -lm -ldl -lpthread)

