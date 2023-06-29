cmake_minimum_required(VERSION 3.16)

project(g2oCurveFitting)
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS "-O3")

find_package(OpenCV REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(g2o REQUIRED)

add_executable(g2oCurveFitting g2oCurveFitting.cpp)

target_include_directories(g2oCurveFitting
  PRIVATE
    ${OpenCV_INCLUDE_DIRS}
    ${EIGEN3_INCLUDE_DIR})

#message(STATUS "opencv ===> ${OpenCV_LIBS}")

target_link_libraries(g2oCurveFitting

  PRIVATE
    #${OpenCV_LIBS}  # or you can just include opencv_core if only the header core is used
    opencv_core
    g2o::core
    g2o::solver_dense)  # look /usr/local/lib/cmake/g2o/g2oTargets.cmake for details