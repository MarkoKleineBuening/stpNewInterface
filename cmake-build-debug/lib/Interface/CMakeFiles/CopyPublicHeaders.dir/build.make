# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /home/marko/software/bin/cmake

# The command to remove a file.
RM = /home/marko/software/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marko/workspace/src/stp-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marko/workspace/src/stp-master/cmake-build-debug

# Utility rule file for CopyPublicHeaders.

# Include the progress variables for this target.
include lib/Interface/CMakeFiles/CopyPublicHeaders.dir/progress.make

CopyPublicHeaders: lib/Interface/CMakeFiles/CopyPublicHeaders.dir/build.make
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /home/marko/software/bin/cmake -E make_directory /home/marko/workspace/src/stp-master/cmake-build-debug/include/stp
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /home/marko/software/bin/cmake -E echo LEGACY:\ Copying\ c_interface.h\ to\ /home/marko/workspace/src/stp-master/cmake-build-debug/include/stp
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /home/marko/software/bin/cmake -E copy_if_different /home/marko/workspace/src/stp-master/include/stp/c_interface.h /home/marko/workspace/src/stp-master/cmake-build-debug/include/stp/c_interface.h
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /home/marko/software/bin/cmake -E make_directory /home/marko/workspace/src/stp-master/cmake-build-debug/include/stp
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /home/marko/software/bin/cmake -E echo LEGACY:\ Copying\ cpp_interface.h\ to\ /home/marko/workspace/src/stp-master/cmake-build-debug/include/stp
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /home/marko/software/bin/cmake -E copy_if_different /home/marko/workspace/src/stp-master/include/stp/cpp_interface.h /home/marko/workspace/src/stp-master/cmake-build-debug/include/stp/cpp_interface.h
.PHONY : CopyPublicHeaders

# Rule to build all files generated by this target.
lib/Interface/CMakeFiles/CopyPublicHeaders.dir/build: CopyPublicHeaders

.PHONY : lib/Interface/CMakeFiles/CopyPublicHeaders.dir/build

lib/Interface/CMakeFiles/CopyPublicHeaders.dir/clean:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && $(CMAKE_COMMAND) -P CMakeFiles/CopyPublicHeaders.dir/cmake_clean.cmake
.PHONY : lib/Interface/CMakeFiles/CopyPublicHeaders.dir/clean

lib/Interface/CMakeFiles/CopyPublicHeaders.dir/depend:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/lib/Interface /home/marko/workspace/src/stp-master/cmake-build-debug /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface/CMakeFiles/CopyPublicHeaders.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Interface/CMakeFiles/CopyPublicHeaders.dir/depend

