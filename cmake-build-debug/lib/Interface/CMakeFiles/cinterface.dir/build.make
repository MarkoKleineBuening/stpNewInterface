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

# Include any dependencies generated for this target.
include lib/Interface/CMakeFiles/cinterface.dir/depend.make

# Include the progress variables for this target.
include lib/Interface/CMakeFiles/cinterface.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Interface/CMakeFiles/cinterface.dir/flags.make

lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o: lib/Interface/CMakeFiles/cinterface.dir/flags.make
lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o: ../lib/Interface/c_interface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cinterface.dir/c_interface.cpp.o -c /home/marko/workspace/src/stp-master/lib/Interface/c_interface.cpp

lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cinterface.dir/c_interface.cpp.i"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/Interface/c_interface.cpp > CMakeFiles/cinterface.dir/c_interface.cpp.i

lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cinterface.dir/c_interface.cpp.s"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/Interface/c_interface.cpp -o CMakeFiles/cinterface.dir/c_interface.cpp.s

lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o.requires:

.PHONY : lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o.requires

lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o.provides: lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o.requires
	$(MAKE) -f lib/Interface/CMakeFiles/cinterface.dir/build.make lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o.provides.build
.PHONY : lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o.provides

lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o.provides.build: lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o


cinterface: lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o
cinterface: lib/Interface/CMakeFiles/cinterface.dir/build.make

.PHONY : cinterface

# Rule to build all files generated by this target.
lib/Interface/CMakeFiles/cinterface.dir/build: cinterface

.PHONY : lib/Interface/CMakeFiles/cinterface.dir/build

lib/Interface/CMakeFiles/cinterface.dir/requires: lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o.requires

.PHONY : lib/Interface/CMakeFiles/cinterface.dir/requires

lib/Interface/CMakeFiles/cinterface.dir/clean:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface && $(CMAKE_COMMAND) -P CMakeFiles/cinterface.dir/cmake_clean.cmake
.PHONY : lib/Interface/CMakeFiles/cinterface.dir/clean

lib/Interface/CMakeFiles/cinterface.dir/depend:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/lib/Interface /home/marko/workspace/src/stp-master/cmake-build-debug /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface/CMakeFiles/cinterface.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Interface/CMakeFiles/cinterface.dir/depend
