cmake_minimum_required(VERSION 3.0)
project(BACeres)
set( CMAKE_CXX_FLAGS "-std=c++17" )
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS "-O3")

LIST(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

add_executable(bac bundleadjustmentceres.cpp)

Find_Package(G2O REQUIRED)
Find_Package(Eigen3 REQUIRED)
Find_Package(Ceres REQUIRED)
Find_Package(Sophus REQUIRED)
Find_Package(CSparse REQUIRED)

SET(G2O_LIBS g2o_csparse_extension g2o_stuff g2o_core cxsparse)

include_directories(  
    ${PROJECT_SOURCE_DIR}
    ${EIGEN3_INCLUDE_DIR}
    ${CSPARSE_INCLUDE_DIR})
# target_include_directories( bac
#     PRIVATE
#     ${PROJECT_SOURCE_DIR}
#     ${EIGEN3_INCLUDE_DIR}
#     ${CSPARSE_INCLUDE_DIR}
# )
# message(" include dirs, ${OpenCV_INCLUDE_DIRS}, libs ${OpenCV_LIBS} ")
add_library(bal_common common.cpp)
target_link_libraries( bac 
    PRIVATE
    ${CERES_LIBRARIES}
    bal_common
)

