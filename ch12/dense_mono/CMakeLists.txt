cmake_minimum_required(VERSION 3.0)
project(dense_mapping)
set( CMAKE_CXX_FLAGS "-std=c++17" )

find_package( OpenCV REQUIRED )
find_package( Sophus REQUIRED )
find_package( Eigen3 REQUIRED )


add_executable(dense_map_mono dense_mapping.cpp)
target_link_libraries( dense_map_mono 
    PRIVATE 
    ${OpenCV_LIBS}
    Sophus::Sophus
)

target_include_directories(  dense_map_mono
    PRIVATE
    ${OpenCV_INCLUDE_DIRS} 
    ${EIGEN3_INCLUDE_DIR}
)