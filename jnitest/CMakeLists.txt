cmake_minimum_required(VERSION 3.5)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)
add_definitions(
        -D_GNU_SOURCE )
include_directories(.)
aux_source_directory(. DIR_SRCS)
add_definitions(-DTARGET_ARCH_x86 -DLINUX)
link_directories(
        /home/wwx/jdk1.7/jre/lib/amd64/server
)
add_library(J2C SHARED J2C.c jni.h)
add_executable(C2J C2J.c)
target_link_libraries(C2J -ljvm)


