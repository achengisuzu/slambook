cmake_minimum_required(VERSION 3.0)
project(traingulation)
set( CMAKE_CXX_FLAGS "-std=c++14" )

add_executable(triangle triangulation.cpp)

find_package( OpenCV REQUIRED )

target_include_directories( triangle
    PRIVATE
    ${OpenCV_INCLUDE_DIRS} 
)
# message(" include dirs, ${OpenCV_INCLUDE_DIRS}, libs ${OpenCV_LIBS} ")

target_link_libraries( triangle 
    PRIVATE
    ${OpenCV_LIBS}
)
