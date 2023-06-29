cmake_minimum_required(VERSION 3.0)
project(guassNewton)
set( CMAKE_CXX_FLAGS "-std=c++14" )

add_executable(guassNewton guassNewton.cpp)

find_package( OpenCV REQUIRED )
find_package( Eigen3 REQUIRED )

target_include_directories( guassNewton
    PRIVATE
    ${OpenCV_INCLUDE_DIRS} 
    ${EIGEN3_INCLUDE_DIR}
)

target_link_libraries( guassNewton 
    PRIVATE 
    ${OpenCV_LIBS}
)
