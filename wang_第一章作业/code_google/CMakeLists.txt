# 声明要求的 cmake 最低版本
cmake_minimum_required(VERSION 2.8)

# 声明一个 cmake 工程
project(HelloSLAM)

# 设置编译模式
# set(CMAKE_BUILD_TYPE "Release")

# find_package(GTest REQUIRED)
# include_directories(${GTEST_INCLUDE_DIRS})

# find_package(GFLAGS REQUIRED) 
# include_directories(${GFLAGS_INCLUDE_DIRS})

# find_package(GLOG REQUIRED) 
# include_directories(${GLOG_INCLUDE_DIRS})

# set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
# list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
# find_package(Gflags REQUIRED)
# find_package(Glog REQUIRED)
# include_directories(${GFLAGS_INCLUDE_DIRS} ${GLOG_INCLUDE_DIRS})


# find_package(Glog REQUIRED)
# include_directories(BEFORE ${GLOG_INCLUDE_DIRS}) 


#set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
#list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

# find_package(glog REQUIRED) 
# find_package(gflags REQUIRED) 

#target_link_libraries(gflags)
# include_directories(${GFLAGS_INCLUDE_DIRS} ${GLOG_INCLUDE_DIRS})

# add_executable(main glog.cpp)
# target_link_libraries (main  ${GFLAGS_INCLUDE_DIRS} )

# MESSAGE( [Main] " GFLAGS_FOUND = ${GFLAGS_FOUND}")
# MESSAGE( [Main] " GFLAGS_INCLUDE_DIRS = ${GFLAGS_INCLUDE_DIRS}")
# MESSAGE( [Main] " GFLAGS_LIBRARIES = ${GFLAGS_LIBRARIES}")

# MESSAGE( [Main] " GLOG_FOUND = ${GLOG_FOUND}")
# MESSAGE( [Main] " GLOG_INCLUDE_DIRS = ${GLOG_INCLUDE_DIRS}")
# MESSAGE( [Main] " GLOG_LIBRARIES = ${GLOG_LIBRARIES}")

find_package (glog)

add_executable (demo01 glog.cpp)
target_link_libraries (demo01 glog::glog  libgflags.a  libglog.a gflags)
# add_executable(demo glog.cpp)
# target_link_libraries (demo  ${GLOG_LIBRARIES} ${GFLAGS_LIBRARIES})