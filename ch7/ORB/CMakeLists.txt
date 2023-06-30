cmake_minimum_required(VERSION 3.0)
project(ORBCalc)
set( CMAKE_CXX_FLAGS "-std=c++14" )

add_executable(orb_cv orb_cv.cpp)

find_package( OpenCV REQUIRED )

target_include_directories( orb_cv
    PRIVATE
    ${OpenCV_INCLUDE_DIRS} 
)
# message(" include dirs, ${OpenCV_INCLUDE_DIRS}, libs ${OpenCV_LIBS} ")

target_link_libraries( orb_cv 
    PRIVATE
    opencv_core
    opencv_features2d
    opencv_highgui
    ${OpenCV_LIBS}
)
