cmake_minimum_required( VERSION 2.8.12 )
project( EIGEN )
add_executable( EIGEN eigenMatrix.cpp )
include_directories( "/usr/include/eigen3" )
