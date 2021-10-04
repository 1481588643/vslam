cmake_minimum_required(VERSION 2.8)
project(draw_trajectory)
 
# Check C++11 or C++0x support
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
    add_definitions(-DCOMPILEDWITHC11)
    message(STATUS "Using flag -std=c++11.")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
    add_definitions(-DCOMPILEDWITHC0X)
    message(STATUS "Using flag -std=c++0x.")
else()
    message(FATAL_ERROR "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")
endif()
 
include_directories( "/usr/include/eigen3" )
find_package(fmt REQUIRED)
set(FMT_LIBRARIES fmt::fmt)
 
find_package(Pangolin REQUIRED) #P要大写
include_directories(${Pangolin_INCLUDE_DIRS})
 
FIND_PACKAGE(sophus REQUIRED)
set(Sophus_LIBRARIES libSophus.so)
TARGET_LINK_LIBRARIES(${PROJECT_NAME}
     ${Sophus_LIBRARIES})
     include_directories(${Sophus_INCLUDE_DIRS})
add_executable(draw_trajectory  draw_trajectory.cpp)
target_link_libraries( draw_trajectory ${Sophus_LIBRARIES} ${Pangolin_LIBRARIES})