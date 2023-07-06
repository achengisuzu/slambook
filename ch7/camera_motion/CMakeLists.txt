cmake_minimum_required(VERSION 3.0)
project(pose_estimation)
set( CMAKE_CXX_FLAGS "-std=c++14" )

add_executable(pose pose_estimation_2d2d.cpp)

find_package( OpenCV REQUIRED )

target_include_directories( pose
    PRIVATE
    ${OpenCV_INCLUDE_DIRS} 
)
# message(" include dirs, ${OpenCV_INCLUDE_DIRS}, libs ${OpenCV_LIBS} ")

target_link_libraries( pose 
    PRIVATE
    opencv_core
    opencv_features2d
    opencv_highgui
    opencv_calib3d
    # ${OpenCV_LIBS}
)
