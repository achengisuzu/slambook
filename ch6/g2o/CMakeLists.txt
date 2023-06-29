# cmake_minimum_required(VERSION 3.6)
# project(g2oCurveFitting)
# set( CMAKE_CXX_FLAGS "-std=c++17" )
# set(CMAKE_BUILD_TYPE Release)

# list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

# find_package( OpenCV REQUIRED )
# include_directories( ${OpenCV_INCLUDE_DIRS} )
# include_directories( "/usr/include/eigen3" )

# # g2o
# find_package(G2O REQUIRED)
# include_directories(${G2O_INCLUDE_DIRS})

# #fmt
# find_package( FMT REQUIRED )


# add_executable(g2oCurveFitting g2oCurveFitting.cpp)
# target_link_libraries(g2oCurveFitting ${OpenCV_LIBS} ${G2O_CORE_LIBRARY} ${G2O_STUFF_LIBRARY} fmt::fmt)
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