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
CMAKE_SOURCE_DIR = /home/angelhyc/slambook2/ch7/camera_motion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/angelhyc/slambook2/ch7/camera_motion/build

# Include any dependencies generated for this target.
include CMakeFiles/pose.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pose.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pose.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pose.dir/flags.make

CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o: CMakeFiles/pose.dir/flags.make
CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o: ../pose_estimation_2d2d.cpp
CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o: CMakeFiles/pose.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angelhyc/slambook2/ch7/camera_motion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o -MF CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o.d -o CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o -c /home/angelhyc/slambook2/ch7/camera_motion/pose_estimation_2d2d.cpp

CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angelhyc/slambook2/ch7/camera_motion/pose_estimation_2d2d.cpp > CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.i

CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angelhyc/slambook2/ch7/camera_motion/pose_estimation_2d2d.cpp -o CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.s

# Object files for target pose
pose_OBJECTS = \
"CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o"

# External object files for target pose
pose_EXTERNAL_OBJECTS =

pose: CMakeFiles/pose.dir/pose_estimation_2d2d.cpp.o
pose: CMakeFiles/pose.dir/build.make
pose: /usr/local/lib/libopencv_highgui.so.4.7.0
pose: /usr/local/lib/libopencv_calib3d.so.4.7.0
pose: /usr/local/lib/libopencv_videoio.so.4.7.0
pose: /usr/local/lib/libopencv_imgcodecs.so.4.7.0
pose: /usr/local/lib/libopencv_features2d.so.4.7.0
pose: /usr/local/lib/libopencv_flann.so.4.7.0
pose: /usr/local/lib/libopencv_imgproc.so.4.7.0
pose: /usr/local/lib/libopencv_core.so.4.7.0
pose: CMakeFiles/pose.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/angelhyc/slambook2/ch7/camera_motion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pose"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pose.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pose.dir/build: pose
.PHONY : CMakeFiles/pose.dir/build

CMakeFiles/pose.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pose.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pose.dir/clean

CMakeFiles/pose.dir/depend:
	cd /home/angelhyc/slambook2/ch7/camera_motion/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/angelhyc/slambook2/ch7/camera_motion /home/angelhyc/slambook2/ch7/camera_motion /home/angelhyc/slambook2/ch7/camera_motion/build /home/angelhyc/slambook2/ch7/camera_motion/build /home/angelhyc/slambook2/ch7/camera_motion/build/CMakeFiles/pose.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pose.dir/depend

