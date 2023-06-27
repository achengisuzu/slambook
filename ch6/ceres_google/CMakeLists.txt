cmake_minimum_required(VERSION 3.0)
project(ceresCurveFitting)
set( CMAKE_CXX_FLAGS "-std=c++17" )

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
include_directories( "/usr/include/eigen3" )

find_package( Ceres REQUIRED )
include_directories( ${CERES_INCLUDE_DIRS} )

add_executable(ceresfitting ceresCurveFitting.cpp)
target_link_libraries( ceresfitting ${OpenCV_LIBS} ${CERES_LIBRARIES})
