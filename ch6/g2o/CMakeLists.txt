cmake_minimum_required(VERSION 3.6)
project(g2oCurveFitting)
set( CMAKE_CXX_FLAGS "-std=c++17" )
set(CMAKE_BUILD_TYPE Release)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
include_directories( "/usr/include/eigen3" )

# g2o
find_package(G2O REQUIRED)
include_directories(${G2O_INCLUDE_DIRS})

#fmt
find_package( FMT REQUIRED )


add_executable(g2oCurveFitting g2oCurveFitting.cpp)
target_link_libraries(g2oCurveFitting ${OpenCV_LIBS} ${G2O_CORE_LIBRARY} ${G2O_STUFF_LIBRARY} fmt::fmt)
