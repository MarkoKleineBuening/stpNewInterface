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
include lib/Globals/CMakeFiles/stpglobals.dir/depend.make

# Include the progress variables for this target.
include lib/Globals/CMakeFiles/stpglobals.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Globals/CMakeFiles/stpglobals.dir/flags.make

lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o: lib/Globals/CMakeFiles/stpglobals.dir/flags.make
lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o: ../lib/Globals/Globals.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Globals && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stpglobals.dir/Globals.cpp.o -c /home/marko/workspace/src/stp-master/lib/Globals/Globals.cpp

lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stpglobals.dir/Globals.cpp.i"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Globals && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/Globals/Globals.cpp > CMakeFiles/stpglobals.dir/Globals.cpp.i

lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stpglobals.dir/Globals.cpp.s"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Globals && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/Globals/Globals.cpp -o CMakeFiles/stpglobals.dir/Globals.cpp.s

lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o.requires:

.PHONY : lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o.requires

lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o.provides: lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o.requires
	$(MAKE) -f lib/Globals/CMakeFiles/stpglobals.dir/build.make lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o.provides.build
.PHONY : lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o.provides

lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o.provides.build: lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o


stpglobals: lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o
stpglobals: lib/Globals/CMakeFiles/stpglobals.dir/build.make

.PHONY : stpglobals

# Rule to build all files generated by this target.
lib/Globals/CMakeFiles/stpglobals.dir/build: stpglobals

.PHONY : lib/Globals/CMakeFiles/stpglobals.dir/build

lib/Globals/CMakeFiles/stpglobals.dir/requires: lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o.requires

.PHONY : lib/Globals/CMakeFiles/stpglobals.dir/requires

lib/Globals/CMakeFiles/stpglobals.dir/clean:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Globals && $(CMAKE_COMMAND) -P CMakeFiles/stpglobals.dir/cmake_clean.cmake
.PHONY : lib/Globals/CMakeFiles/stpglobals.dir/clean

lib/Globals/CMakeFiles/stpglobals.dir/depend:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/lib/Globals /home/marko/workspace/src/stp-master/cmake-build-debug /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Globals /home/marko/workspace/src/stp-master/cmake-build-debug/lib/Globals/CMakeFiles/stpglobals.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Globals/CMakeFiles/stpglobals.dir/depend

