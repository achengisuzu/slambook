# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/angelhyc/slambook2/ch7/ORB

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/angelhyc/slambook2/ch7/ORB/build

# Include any dependencies generated for this target.
include CMakeFiles/orb_cv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/orb_cv.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/orb_cv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/orb_cv.dir/flags.make

CMakeFiles/orb_cv.dir/orb_cv.cpp.o: CMakeFiles/orb_cv.dir/flags.make
CMakeFiles/orb_cv.dir/orb_cv.cpp.o: ../orb_cv.cpp
CMakeFiles/orb_cv.dir/orb_cv.cpp.o: CMakeFiles/orb_cv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angelhyc/slambook2/ch7/ORB/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/orb_cv.dir/orb_cv.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/orb_cv.dir/orb_cv.cpp.o -MF CMakeFiles/orb_cv.dir/orb_cv.cpp.o.d -o CMakeFiles/orb_cv.dir/orb_cv.cpp.o -c /home/angelhyc/slambook2/ch7/ORB/orb_cv.cpp

CMakeFiles/orb_cv.dir/orb_cv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb_cv.dir/orb_cv.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angelhyc/slambook2/ch7/ORB/orb_cv.cpp > CMakeFiles/orb_cv.dir/orb_cv.cpp.i

CMakeFiles/orb_cv.dir/orb_cv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb_cv.dir/orb_cv.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angelhyc/slambook2/ch7/ORB/orb_cv.cpp -o CMakeFiles/orb_cv.dir/orb_cv.cpp.s

# Object files for target orb_cv
orb_cv_OBJECTS = \
"CMakeFiles/orb_cv.dir/orb_cv.cpp.o"

# External object files for target orb_cv
orb_cv_EXTERNAL_OBJECTS =

orb_cv: CMakeFiles/orb_cv.dir/orb_cv.cpp.o
orb_cv: CMakeFiles/orb_cv.dir/build.make
orb_cv: /usr/local/lib/libopencv_gapi.so.4.7.0
orb_cv: /usr/local/lib/libopencv_highgui.so.4.7.0
orb_cv: /usr/local/lib/libopencv_ml.so.4.7.0
orb_cv: /usr/local/lib/libopencv_objdetect.so.4.7.0
orb_cv: /usr/local/lib/libopencv_photo.so.4.7.0
orb_cv: /usr/local/lib/libopencv_stitching.so.4.7.0
orb_cv: /usr/local/lib/libopencv_video.so.4.7.0
orb_cv: /usr/local/lib/libopencv_videoio.so.4.7.0
orb_cv: /usr/local/lib/libopencv_imgcodecs.so.4.7.0
orb_cv: /usr/local/lib/libopencv_dnn.so.4.7.0
orb_cv: /usr/local/lib/libopencv_calib3d.so.4.7.0
orb_cv: /usr/local/lib/libopencv_features2d.so.4.7.0
orb_cv: /usr/local/lib/libopencv_flann.so.4.7.0
orb_cv: /usr/local/lib/libopencv_imgproc.so.4.7.0
orb_cv: /usr/local/lib/libopencv_core.so.4.7.0
orb_cv: CMakeFiles/orb_cv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/angelhyc/slambook2/ch7/ORB/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable orb_cv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/orb_cv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/orb_cv.dir/build: orb_cv
.PHONY : CMakeFiles/orb_cv.dir/build

CMakeFiles/orb_cv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/orb_cv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/orb_cv.dir/clean

CMakeFiles/orb_cv.dir/depend:
	cd /home/angelhyc/slambook2/ch7/ORB/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/angelhyc/slambook2/ch7/ORB /home/angelhyc/slambook2/ch7/ORB /home/angelhyc/slambook2/ch7/ORB/build /home/angelhyc/slambook2/ch7/ORB/build /home/angelhyc/slambook2/ch7/ORB/build/CMakeFiles/orb_cv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/orb_cv.dir/depend

