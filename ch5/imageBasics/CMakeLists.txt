cmake_minimum_required(VERSION 3.0)
project(ImageBasics)
set( CMAKE_CXX_FLAGS "-std=c++14" )

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )

add_executable(imageBasics imageBasics.cpp)
target_link_libraries( imageBasics ${OpenCV_LIBS})

add_executable(undistort undistortImage.cpp)
target_link_libraries( undistort ${OpenCV_LIBS})