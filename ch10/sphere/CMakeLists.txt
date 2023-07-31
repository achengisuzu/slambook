cmake_minimum_required(VERSION 3.0)
project(pose_graph_g2o)
set( CMAKE_CXX_FLAGS "-std=c++17" )

add_executable(g2o_pose pose_graph_g2o_SE3.cpp)
add_executable(pose_sophus pose_graph_g2o_lie_algebra.cpp)

find_package( Ceres REQUIRED )
find_package( g2o REQUIRED )
find_package( Eigen3 REQUIRED )
find_package( Sophus REQUIRED )

target_include_directories( g2o_pose
    PRIVATE
    ${EIGEN3_INCLUDE_DIR}
)

target_include_directories( pose_sophus
    PRIVATE
    ${EIGEN3_INCLUDE_DIR}
)
# message(" include dirs, ${OpenCV_INCLUDE_DIRS}, libs ${OpenCV_LIBS} ")

target_link_libraries( g2o_pose 
    PRIVATE
    Eigen3::Eigen
    g2o::core
    g2o::solver_eigen
    g2o::types_slam3d
)

target_link_libraries( pose_sophus 
    PRIVATE
    Eigen3::Eigen
    g2o::core
    g2o::solver_eigen
    Sophus::Sophus
)