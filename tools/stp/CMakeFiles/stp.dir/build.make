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
include tools/stp/CMakeFiles/stp.dir/depend.make

# Include the progress variables for this target.
include tools/stp/CMakeFiles/stp.dir/progress.make

# Include the compile flags for this target's objects.
include tools/stp/CMakeFiles/stp.dir/flags.make

tools/stp/CMakeFiles/stp.dir/main.cpp.o: tools/stp/CMakeFiles/stp.dir/flags.make
tools/stp/CMakeFiles/stp.dir/main.cpp.o: tools/stp/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/stp/CMakeFiles/stp.dir/main.cpp.o"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stp.dir/main.cpp.o -c /home/marko/workspace/src/stp-master/tools/stp/main.cpp

tools/stp/CMakeFiles/stp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stp.dir/main.cpp.i"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/tools/stp/main.cpp > CMakeFiles/stp.dir/main.cpp.i

tools/stp/CMakeFiles/stp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stp.dir/main.cpp.s"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/tools/stp/main.cpp -o CMakeFiles/stp.dir/main.cpp.s

tools/stp/CMakeFiles/stp.dir/main.cpp.o.requires:

.PHONY : tools/stp/CMakeFiles/stp.dir/main.cpp.o.requires

tools/stp/CMakeFiles/stp.dir/main.cpp.o.provides: tools/stp/CMakeFiles/stp.dir/main.cpp.o.requires
	$(MAKE) -f tools/stp/CMakeFiles/stp.dir/build.make tools/stp/CMakeFiles/stp.dir/main.cpp.o.provides.build
.PHONY : tools/stp/CMakeFiles/stp.dir/main.cpp.o.provides

tools/stp/CMakeFiles/stp.dir/main.cpp.o.provides.build: tools/stp/CMakeFiles/stp.dir/main.cpp.o


tools/stp/CMakeFiles/stp.dir/main_common.cpp.o: tools/stp/CMakeFiles/stp.dir/flags.make
tools/stp/CMakeFiles/stp.dir/main_common.cpp.o: tools/stp/main_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/stp/CMakeFiles/stp.dir/main_common.cpp.o"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stp.dir/main_common.cpp.o -c /home/marko/workspace/src/stp-master/tools/stp/main_common.cpp

tools/stp/CMakeFiles/stp.dir/main_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stp.dir/main_common.cpp.i"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/tools/stp/main_common.cpp > CMakeFiles/stp.dir/main_common.cpp.i

tools/stp/CMakeFiles/stp.dir/main_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stp.dir/main_common.cpp.s"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/tools/stp/main_common.cpp -o CMakeFiles/stp.dir/main_common.cpp.s

tools/stp/CMakeFiles/stp.dir/main_common.cpp.o.requires:

.PHONY : tools/stp/CMakeFiles/stp.dir/main_common.cpp.o.requires

tools/stp/CMakeFiles/stp.dir/main_common.cpp.o.provides: tools/stp/CMakeFiles/stp.dir/main_common.cpp.o.requires
	$(MAKE) -f tools/stp/CMakeFiles/stp.dir/build.make tools/stp/CMakeFiles/stp.dir/main_common.cpp.o.provides.build
.PHONY : tools/stp/CMakeFiles/stp.dir/main_common.cpp.o.provides

tools/stp/CMakeFiles/stp.dir/main_common.cpp.o.provides.build: tools/stp/CMakeFiles/stp.dir/main_common.cpp.o


tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o: tools/stp/CMakeFiles/stp.dir/flags.make
tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o: tools/stp/STPProgramGlobals.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stp.dir/STPProgramGlobals.cpp.o -c /home/marko/workspace/src/stp-master/tools/stp/STPProgramGlobals.cpp

tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stp.dir/STPProgramGlobals.cpp.i"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/tools/stp/STPProgramGlobals.cpp > CMakeFiles/stp.dir/STPProgramGlobals.cpp.i

tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stp.dir/STPProgramGlobals.cpp.s"
	cd /home/marko/workspace/src/stp-master/tools/stp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/tools/stp/STPProgramGlobals.cpp -o CMakeFiles/stp.dir/STPProgramGlobals.cpp.s

tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o.requires:

.PHONY : tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o.requires

tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o.provides: tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o.requires
	$(MAKE) -f tools/stp/CMakeFiles/stp.dir/build.make tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o.provides.build
.PHONY : tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o.provides

tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o.provides.build: tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o


# Object files for target stp
stp_OBJECTS = \
"CMakeFiles/stp.dir/main.cpp.o" \
"CMakeFiles/stp.dir/main_common.cpp.o" \
"CMakeFiles/stp.dir/STPProgramGlobals.cpp.o"

# External object files for target stp
stp_EXTERNAL_OBJECTS =

stp-2.1.2: tools/stp/CMakeFiles/stp.dir/main.cpp.o
stp-2.1.2: tools/stp/CMakeFiles/stp.dir/main_common.cpp.o
stp-2.1.2: tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o
stp-2.1.2: tools/stp/CMakeFiles/stp.dir/build.make
stp-2.1.2: lib/libstp.so.2.1
stp-2.1.2: /usr/lib/i386-linux-gnu/libboost_program_options.so
stp-2.1.2: /home/marko/workspace/install/reldeb-gcc/lib/libminisat.so
stp-2.1.2: tools/stp/CMakeFiles/stp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../stp"
	cd /home/marko/workspace/src/stp-master/tools/stp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stp.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marko/workspace/src/stp-master/tools/stp && $(CMAKE_COMMAND) -E cmake_symlink_executable ../../stp-2.1.2 ../../stp

stp: stp-2.1.2


# Rule to build all files generated by this target.
tools/stp/CMakeFiles/stp.dir/build: stp

.PHONY : tools/stp/CMakeFiles/stp.dir/build

tools/stp/CMakeFiles/stp.dir/requires: tools/stp/CMakeFiles/stp.dir/main.cpp.o.requires
tools/stp/CMakeFiles/stp.dir/requires: tools/stp/CMakeFiles/stp.dir/main_common.cpp.o.requires
tools/stp/CMakeFiles/stp.dir/requires: tools/stp/CMakeFiles/stp.dir/STPProgramGlobals.cpp.o.requires

.PHONY : tools/stp/CMakeFiles/stp.dir/requires

tools/stp/CMakeFiles/stp.dir/clean:
	cd /home/marko/workspace/src/stp-master/tools/stp && $(CMAKE_COMMAND) -P CMakeFiles/stp.dir/cmake_clean.cmake
.PHONY : tools/stp/CMakeFiles/stp.dir/clean

tools/stp/CMakeFiles/stp.dir/depend:
	cd /home/marko/workspace/src/stp-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/tools/stp /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/tools/stp /home/marko/workspace/src/stp-master/tools/stp/CMakeFiles/stp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/stp/CMakeFiles/stp.dir/depend

