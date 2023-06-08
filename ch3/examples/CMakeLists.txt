cmake_minimum_required( VERSION 2.8.12 )
project( VISUALIZE )
find_package(Pangolin 0.2 REQUIRED)
include_directories(${Pangolin_INCLUDE_DIRS})
message("HELLLOOOO ${Pangolin_INCLUDE_DIRS}")

add_executable( visualize plotTrajectory.cpp )
include_directories( "/usr/include/eigen3" )
target_link_libraries(visualize ${Pangolin_LIBRARIES})