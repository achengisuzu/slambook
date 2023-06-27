cmake_minimum_required(VERSION 3.0)
project(guassNewton)
set( CMAKE_CXX_FLAGS "-std=c++14" )

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
include_directories( "/usr/include/eigen3" )

find_package( Pangolin REQUIRED )
include_directories( ${Pangolin_INCLUDE_DIRS} )

add_executable(guassNewton guassNewton.cpp)
target_link_libraries( guassNewton ${OpenCV_LIBS})
target_link_libraries( guassNewton ${Pangolin_LIBRARIES} )