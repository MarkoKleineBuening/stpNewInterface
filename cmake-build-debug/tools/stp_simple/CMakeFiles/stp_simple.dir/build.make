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
include tools/stp_simple/CMakeFiles/stp_simple.dir/depend.make

# Include the progress variables for this target.
include tools/stp_simple/CMakeFiles/stp_simple.dir/progress.make

# Include the compile flags for this target's objects.
include tools/stp_simple/CMakeFiles/stp_simple.dir/flags.make

tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o: tools/stp_simple/CMakeFiles/stp_simple.dir/flags.make
tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o: ../tools/stp_simple/main_simple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stp_simple.dir/main_simple.cpp.o -c /home/marko/workspace/src/stp-master/tools/stp_simple/main_simple.cpp

tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stp_simple.dir/main_simple.cpp.i"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/tools/stp_simple/main_simple.cpp > CMakeFiles/stp_simple.dir/main_simple.cpp.i

tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stp_simple.dir/main_simple.cpp.s"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/tools/stp_simple/main_simple.cpp -o CMakeFiles/stp_simple.dir/main_simple.cpp.s

tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o.requires:

.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o.requires

tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o.provides: tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o.requires
	$(MAKE) -f tools/stp_simple/CMakeFiles/stp_simple.dir/build.make tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o.provides.build
.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o.provides

tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o.provides.build: tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o


tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o: tools/stp_simple/CMakeFiles/stp_simple.dir/flags.make
tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o: ../tools/stp/main_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o -c /home/marko/workspace/src/stp-master/tools/stp/main_common.cpp

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.i"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/tools/stp/main_common.cpp > CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.i

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.s"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/tools/stp/main_common.cpp -o CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.s

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o.requires:

.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o.requires

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o.provides: tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o.requires
	$(MAKE) -f tools/stp_simple/CMakeFiles/stp_simple.dir/build.make tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o.provides.build
.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o.provides

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o.provides.build: tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o


tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o: tools/stp_simple/CMakeFiles/stp_simple.dir/flags.make
tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o: ../tools/stp/STPProgramGlobals.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o -c /home/marko/workspace/src/stp-master/tools/stp/STPProgramGlobals.cpp

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.i"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/tools/stp/STPProgramGlobals.cpp > CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.i

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.s"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/tools/stp/STPProgramGlobals.cpp -o CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.s

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o.requires:

.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o.requires

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o.provides: tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o.requires
	$(MAKE) -f tools/stp_simple/CMakeFiles/stp_simple.dir/build.make tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o.provides.build
.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o.provides

tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o.provides.build: tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o


# Object files for target stp_simple
stp_simple_OBJECTS = \
"CMakeFiles/stp_simple.dir/main_simple.cpp.o" \
"CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o" \
"CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o"

# External object files for target stp_simple
stp_simple_EXTERNAL_OBJECTS =

stp_simple: tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o
stp_simple: tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o
stp_simple: tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o
stp_simple: tools/stp_simple/CMakeFiles/stp_simple.dir/build.make
stp_simple: lib/libstp.so.2.1
stp_simple: /usr/lib/i386-linux-gnu/libboost_program_options.so
stp_simple: /home/marko/workspace/install/reldeb-gcc/lib/libminisat.so
stp_simple: tools/stp_simple/CMakeFiles/stp_simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marko/workspace/src/stp-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../stp_simple"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stp_simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/stp_simple/CMakeFiles/stp_simple.dir/build: stp_simple

.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/build

tools/stp_simple/CMakeFiles/stp_simple.dir/requires: tools/stp_simple/CMakeFiles/stp_simple.dir/main_simple.cpp.o.requires
tools/stp_simple/CMakeFiles/stp_simple.dir/requires: tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/main_common.cpp.o.requires
tools/stp_simple/CMakeFiles/stp_simple.dir/requires: tools/stp_simple/CMakeFiles/stp_simple.dir/__/stp/STPProgramGlobals.cpp.o.requires

.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/requires

tools/stp_simple/CMakeFiles/stp_simple.dir/clean:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple && $(CMAKE_COMMAND) -P CMakeFiles/stp_simple.dir/cmake_clean.cmake
.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/clean

tools/stp_simple/CMakeFiles/stp_simple.dir/depend:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/tools/stp_simple /home/marko/workspace/src/stp-master/cmake-build-debug /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple /home/marko/workspace/src/stp-master/cmake-build-debug/tools/stp_simple/CMakeFiles/stp_simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/stp_simple/CMakeFiles/stp_simple.dir/depend

