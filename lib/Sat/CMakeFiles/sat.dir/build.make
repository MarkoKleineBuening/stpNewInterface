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
CMAKE_BINARY_DIR = /home/marko/workspace/src/stp-master

# Include any dependencies generated for this target.
include lib/Sat/CMakeFiles/sat.dir/depend.make

# Include the progress variables for this target.
include lib/Sat/CMakeFiles/sat.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Sat/CMakeFiles/sat.dir/flags.make

lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o: lib/Sat/CMakeFiles/sat.dir/flags.make
lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o: lib/Sat/MinisatCore.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/Sat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -std=c++03 -o CMakeFiles/sat.dir/MinisatCore.cpp.o -c /home/marko/workspace/src/stp-master/lib/Sat/MinisatCore.cpp

lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sat.dir/MinisatCore.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/Sat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -std=c++03 -E /home/marko/workspace/src/stp-master/lib/Sat/MinisatCore.cpp > CMakeFiles/sat.dir/MinisatCore.cpp.i

lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sat.dir/MinisatCore.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/Sat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -std=c++03 -S /home/marko/workspace/src/stp-master/lib/Sat/MinisatCore.cpp -o CMakeFiles/sat.dir/MinisatCore.cpp.s

lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o.requires:

.PHONY : lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o.requires

lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o.provides: lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o.requires
	$(MAKE) -f lib/Sat/CMakeFiles/sat.dir/build.make lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o.provides.build
.PHONY : lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o.provides

lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o.provides.build: lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o


lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o: lib/Sat/CMakeFiles/sat.dir/flags.make
lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o: lib/Sat/SimplifyingMinisat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/Sat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -std=c++03 -o CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o -c /home/marko/workspace/src/stp-master/lib/Sat/SimplifyingMinisat.cpp

lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sat.dir/SimplifyingMinisat.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/Sat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -std=c++03 -E /home/marko/workspace/src/stp-master/lib/Sat/SimplifyingMinisat.cpp > CMakeFiles/sat.dir/SimplifyingMinisat.cpp.i

lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sat.dir/SimplifyingMinisat.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/Sat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -std=c++03 -S /home/marko/workspace/src/stp-master/lib/Sat/SimplifyingMinisat.cpp -o CMakeFiles/sat.dir/SimplifyingMinisat.cpp.s

lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o.requires:

.PHONY : lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o.requires

lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o.provides: lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o.requires
	$(MAKE) -f lib/Sat/CMakeFiles/sat.dir/build.make lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o.provides.build
.PHONY : lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o.provides

lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o.provides.build: lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o


sat: lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o
sat: lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o
sat: lib/Sat/CMakeFiles/sat.dir/build.make

.PHONY : sat

# Rule to build all files generated by this target.
lib/Sat/CMakeFiles/sat.dir/build: sat

.PHONY : lib/Sat/CMakeFiles/sat.dir/build

lib/Sat/CMakeFiles/sat.dir/requires: lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o.requires
lib/Sat/CMakeFiles/sat.dir/requires: lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o.requires

.PHONY : lib/Sat/CMakeFiles/sat.dir/requires

lib/Sat/CMakeFiles/sat.dir/clean:
	cd /home/marko/workspace/src/stp-master/lib/Sat && $(CMAKE_COMMAND) -P CMakeFiles/sat.dir/cmake_clean.cmake
.PHONY : lib/Sat/CMakeFiles/sat.dir/clean

lib/Sat/CMakeFiles/sat.dir/depend:
	cd /home/marko/workspace/src/stp-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/lib/Sat /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/lib/Sat /home/marko/workspace/src/stp-master/lib/Sat/CMakeFiles/sat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Sat/CMakeFiles/sat.dir/depend
