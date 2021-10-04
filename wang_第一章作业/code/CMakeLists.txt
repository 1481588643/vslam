# 声明要求的 cmake 最低版本
cmake_minimum_required(VERSION 2.8)

# 声明一个 cmake 工程
project(HelloSLAM)

# 设置编译模式
set(CMAKE_BUILD_TYPE "Release")

# set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
# list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
# find_package(Gflags REQUIRED)
# # find_package(Glog)
# find_package(glog REQUIRED) 
include_directories(${GFLAGS_INCLUDE_DIRS} ${GLOG_INCLUDE_DIRS})
# 添加hello库
add_library(hello hello.cpp)
# 共享库
add_library(hello_shared SHARED hello.cpp)

# 添加可执行程序调用hello库中函数
add_executable(useHello useHello.cpp)
# 将库文件链接到可执行程序上
target_link_libraries(useHello hello_shared)
INSTALL(TARGETS hello_shared LIBRARY DESTINATION /usr/local/lib)
INSTALL(FILES ${PROJECT_SOURCE_DIR}/include/hello.h DESTINATION /usr/local/include)

