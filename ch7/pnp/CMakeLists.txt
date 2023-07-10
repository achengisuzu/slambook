cmake_minimum_required(VERSION 3.6)
project(pose_estimation)
set( CMAKE_CXX_FLAGS "-std=c++17" )

add_executable(pose pose_estimation_3d2d.cpp)

find_package( OpenCV REQUIRED )
find_package( g2o REQUIRED )
find_package( Sophus REQUIRED )
find_package( Eigen3 REQUIRED )


target_include_directories( pose
    PRIVATE
    ${OpenCV_INCLUDE_DIRS} 
    ${EIGEN3_INCLUDE_DIR}
)
# message(" include dirs, ${OpenCV_INCLUDE_DIRS}, libs ${OpenCV_LIBS} ")

target_link_libraries( pose 
    PRIVATE
    opencv_core
    opencv_features2d
    opencv_highgui
    opencv_calib3d
    g2o::core
    g2o::solver_dense
    Sophus::Sophus
    # ${OpenCV_LIBS}
)
