cmake_minimum_required(VERSION 3.0)
project(ceresCurveFitting)
set( CMAKE_CXX_FLAGS "-std=c++17" )

find_package( OpenCV REQUIRED )
find_package( Eigen3 REQUIRED )
find_package( Ceres REQUIRED )

add_executable(ceresfitting ceresCurveFitting.cpp)

target_include_directories( ceresfitting
    PRIVATE
    ${OpenCV_INCLUDE_DIRS} 
    ${EIGEN3_INCLUDE_DIR}
)
# message (" opencv dirs ${OpenCV_INCLUDE_DIRS} 
#  eigen dirs ${EIGEN3_INCLUDE_DIR}
#  ceres dirs ${CERES_INCLUDE_DIRS}")

target_link_libraries( ceresfitting 
    PRIVATE
    ${OpenCV_LIBS} 
    ${CERES_LIBRARIES})

# message("opencv libs ${OpenCV_LIBS} 
#     ceres libs ${CERES_LIBRARIES}")
