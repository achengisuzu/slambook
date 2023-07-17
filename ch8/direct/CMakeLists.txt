cmake_minimum_required(VERSION 3.0)
project(directMethod)
set( CMAKE_CXX_FLAGS "-std=c++14" )

add_executable(direct direct_method.cpp)

find_package( OpenCV REQUIRED )
find_package( Sophus REQUIRED )
find_package( Pangolin REQUIRED )

target_include_directories( direct
    PRIVATE
    ${OpenCV_INCLUDE_DIRS}
    ${Pangolin_INCLUDE_DIR}
)
# message(" include dirs, ${OpenCV_INCLUDE_DIRS}, libs ${OpenCV_LIBS} ")

target_link_libraries( direct 
    PRIVATE
    Sophus::Sophus
    ${OpenCV_LIBS}
    ${Pangolin_LIBRARIES}
)
