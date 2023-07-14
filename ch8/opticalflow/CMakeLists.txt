cmake_minimum_required(VERSION 3.0)
project(optical_flow)
set( CMAKE_CXX_FLAGS "-std=c++14" )

add_executable(opticalflow opticalflow.cpp)

find_package( OpenCV REQUIRED )
find_package( Eigen3 REQUIRED )

target_include_directories( opticalflow
    PRIVATE
    ${OpenCV_INCLUDE_DIRS} 
    ${EIGEN3_INCLUDE_DIR}
)
# message(" include dirs, ${OpenCV_INCLUDE_DIRS}, libs ${OpenCV_LIBS} ")

target_link_libraries( opticalflow 
    PRIVATE
    ${OpenCV_LIBS}
)
