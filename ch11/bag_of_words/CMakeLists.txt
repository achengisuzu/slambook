cmake_minimum_required(VERSION 3.0)
project(featureTraining)
set( CMAKE_CXX_FLAGS "-std=c++14" )


include_directories( ${OpenCV_INCLUDE_DIRS} )

set( DBoW3_INCLUDE_DIRS "/usr/local/include" )
set( DBoW3_LIBS "/usr/local/lib/libDBoW3.so" )

find_package( OpenCV REQUIRED )

add_executable(feature_training feature_training.cpp)
target_link_libraries( feature_training 
    PRIVATE 
    ${OpenCV_LIBS}
    ${DBoW3_LIBS}
)

add_executable( loop_closure loop_closure.cpp )
target_link_libraries( loop_closure 
    PRIVATE
    ${OpenCV_LIBS}
    ${DBoW3_LIBS}
)

add_executable( gen_vocab gen_vocab_large.cpp )
target_link_libraries( gen_vocab 
    PRIVATE
    ${OpenCV_LIBS}
    ${DBoW3_LIBS}
)