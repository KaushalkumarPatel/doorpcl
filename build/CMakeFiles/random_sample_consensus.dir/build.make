# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/william/code/doorpcl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/william/code/doorpcl/build

# Include any dependencies generated for this target.
include CMakeFiles/random_sample_consensus.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/random_sample_consensus.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/random_sample_consensus.dir/flags.make

CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o: CMakeFiles/random_sample_consensus.dir/flags.make
CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o: ../random_sample_consensus.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/william/code/doorpcl/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o -c /home/william/code/doorpcl/random_sample_consensus.cpp

CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/william/code/doorpcl/random_sample_consensus.cpp > CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.i

CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/william/code/doorpcl/random_sample_consensus.cpp -o CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.s

CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o.requires:
.PHONY : CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o.requires

CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o.provides: CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o.requires
	$(MAKE) -f CMakeFiles/random_sample_consensus.dir/build.make CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o.provides.build
.PHONY : CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o.provides

CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o.provides.build: CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o

# Object files for target random_sample_consensus
random_sample_consensus_OBJECTS = \
"CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o"

# External object files for target random_sample_consensus
random_sample_consensus_EXTERNAL_OBJECTS =

random_sample_consensus: CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o
random_sample_consensus: /usr/lib/libboost_system-mt.so
random_sample_consensus: /usr/lib/libboost_filesystem-mt.so
random_sample_consensus: /usr/lib/libboost_thread-mt.so
random_sample_consensus: /usr/lib/libboost_date_time-mt.so
random_sample_consensus: /usr/lib/libboost_iostreams-mt.so
random_sample_consensus: /usr/lib/libpcl_common.so
random_sample_consensus: /usr/lib/libflann_cpp_s.a
random_sample_consensus: /usr/lib/libpcl_kdtree.so
random_sample_consensus: /usr/lib/libpcl_octree.so
random_sample_consensus: /usr/lib/libpcl_search.so
random_sample_consensus: /usr/lib/libpcl_sample_consensus.so
random_sample_consensus: /usr/lib/libpcl_filters.so
random_sample_consensus: /usr/lib/libOpenNI.so
random_sample_consensus: /usr/lib/libvtkCommon.so.5.8.0
random_sample_consensus: /usr/lib/libvtkRendering.so.5.8.0
random_sample_consensus: /usr/lib/libvtkHybrid.so.5.8.0
random_sample_consensus: /usr/lib/libpcl_io.so
random_sample_consensus: /usr/lib/libpcl_features.so
random_sample_consensus: /usr/lib/libpcl_keypoints.so
random_sample_consensus: /usr/lib/libpcl_segmentation.so
random_sample_consensus: /usr/lib/libpcl_visualization.so
random_sample_consensus: /usr/lib/libpcl_tracking.so
random_sample_consensus: /usr/lib/libqhull.so
random_sample_consensus: /usr/lib/libpcl_surface.so
random_sample_consensus: /usr/lib/libpcl_registration.so
random_sample_consensus: /usr/lib/libpcl_apps.so
random_sample_consensus: /usr/lib/libvtkParallel.so.5.8.0
random_sample_consensus: /usr/lib/libvtkRendering.so.5.8.0
random_sample_consensus: /usr/lib/libvtkGraphics.so.5.8.0
random_sample_consensus: /usr/lib/libvtkImaging.so.5.8.0
random_sample_consensus: /usr/lib/libvtkIO.so.5.8.0
random_sample_consensus: /usr/lib/libvtkFiltering.so.5.8.0
random_sample_consensus: /usr/lib/libvtkCommon.so.5.8.0
random_sample_consensus: /usr/lib/libvtksys.so.5.8.0
random_sample_consensus: CMakeFiles/random_sample_consensus.dir/build.make
random_sample_consensus: CMakeFiles/random_sample_consensus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable random_sample_consensus"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/random_sample_consensus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/random_sample_consensus.dir/build: random_sample_consensus
.PHONY : CMakeFiles/random_sample_consensus.dir/build

CMakeFiles/random_sample_consensus.dir/requires: CMakeFiles/random_sample_consensus.dir/random_sample_consensus.cpp.o.requires
.PHONY : CMakeFiles/random_sample_consensus.dir/requires

CMakeFiles/random_sample_consensus.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/random_sample_consensus.dir/cmake_clean.cmake
.PHONY : CMakeFiles/random_sample_consensus.dir/clean

CMakeFiles/random_sample_consensus.dir/depend:
	cd /home/william/code/doorpcl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/william/code/doorpcl /home/william/code/doorpcl /home/william/code/doorpcl/build /home/william/code/doorpcl/build /home/william/code/doorpcl/build/CMakeFiles/random_sample_consensus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/random_sample_consensus.dir/depend

