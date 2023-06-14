cmake_minimum_required(VERSION 3.0)
project(ImageBasics)
set( CMAKE_CXX_FLAGS "-std=c++14" )

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
include_directories( "/usr/include/eigen3" )

find_package( Pangolin REQUIRED )
include_directories( ${Pangolin_INCLUDE_DIRS} )

find_package(Sophus REQUIRED)


add_executable(jointMap jointMap.cpp)
target_link_libraries( jointMap ${OpenCV_LIBS})
target_link_libraries( jointMap ${Pangolin_LIBRARIES} )
target_link_libraries( jointMap Sophus::Sophus )