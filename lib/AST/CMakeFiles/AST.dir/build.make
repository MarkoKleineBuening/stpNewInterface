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
include lib/AST/CMakeFiles/AST.dir/depend.make

# Include the progress variables for this target.
include lib/AST/CMakeFiles/AST.dir/progress.make

# Include the compile flags for this target's objects.
include lib/AST/CMakeFiles/AST.dir/flags.make

lib/AST/ASTKind.cpp: lib/AST/ASTKind.kinds
lib/AST/ASTKind.cpp: lib/AST/genkinds.pl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ASTKind.cpp, ../../include/stp/AST/ASTKind.h"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/perl /home/marko/workspace/src/stp-master/lib/AST/genkinds.pl --file /home/marko/workspace/src/stp-master/lib/AST/ASTKind.kinds
	cd /home/marko/workspace/src/stp-master/lib/AST && /home/marko/software/bin/cmake -E make_directory /home/marko/workspace/src/stp-master/include/stp/AST
	cd /home/marko/workspace/src/stp-master/lib/AST && /home/marko/software/bin/cmake -E rename /home/marko/workspace/src/stp-master/lib/AST/ASTKind.h /home/marko/workspace/src/stp-master/include/stp/AST/ASTKind.h

include/stp/AST/ASTKind.h: lib/AST/ASTKind.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate include/stp/AST/ASTKind.h

lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o: lib/AST/ASTKind.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/ASTKind.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/ASTKind.cpp

lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/ASTKind.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/ASTKind.cpp > CMakeFiles/AST.dir/ASTKind.cpp.i

lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/ASTKind.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/ASTKind.cpp -o CMakeFiles/AST.dir/ASTKind.cpp.s

lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o


lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o: lib/AST/ASTInterior.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/ASTInterior.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/ASTInterior.cpp

lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/ASTInterior.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/ASTInterior.cpp > CMakeFiles/AST.dir/ASTInterior.cpp.i

lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/ASTInterior.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/ASTInterior.cpp -o CMakeFiles/AST.dir/ASTInterior.cpp.s

lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o


lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o: lib/AST/ASTNode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/ASTNode.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/ASTNode.cpp

lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/ASTNode.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/ASTNode.cpp > CMakeFiles/AST.dir/ASTNode.cpp.i

lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/ASTNode.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/ASTNode.cpp -o CMakeFiles/AST.dir/ASTNode.cpp.s

lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o


lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o: lib/AST/ASTUtil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/ASTUtil.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/ASTUtil.cpp

lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/ASTUtil.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/ASTUtil.cpp > CMakeFiles/AST.dir/ASTUtil.cpp.i

lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/ASTUtil.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/ASTUtil.cpp -o CMakeFiles/AST.dir/ASTUtil.cpp.s

lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o


lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o: lib/AST/ASTBVConst.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/ASTBVConst.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/ASTBVConst.cpp

lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/ASTBVConst.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/ASTBVConst.cpp > CMakeFiles/AST.dir/ASTBVConst.cpp.i

lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/ASTBVConst.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/ASTBVConst.cpp -o CMakeFiles/AST.dir/ASTBVConst.cpp.s

lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o


lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o: lib/AST/ASTmisc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/ASTmisc.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/ASTmisc.cpp

lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/ASTmisc.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/ASTmisc.cpp > CMakeFiles/AST.dir/ASTmisc.cpp.i

lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/ASTmisc.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/ASTmisc.cpp -o CMakeFiles/AST.dir/ASTmisc.cpp.s

lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o


lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o: lib/AST/ASTSymbol.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/ASTSymbol.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/ASTSymbol.cpp

lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/ASTSymbol.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/ASTSymbol.cpp > CMakeFiles/AST.dir/ASTSymbol.cpp.i

lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/ASTSymbol.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/ASTSymbol.cpp -o CMakeFiles/AST.dir/ASTSymbol.cpp.s

lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o


lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o: lib/AST/MutableASTNode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/MutableASTNode.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/MutableASTNode.cpp

lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/MutableASTNode.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/MutableASTNode.cpp > CMakeFiles/AST.dir/MutableASTNode.cpp.i

lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/MutableASTNode.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/MutableASTNode.cpp -o CMakeFiles/AST.dir/MutableASTNode.cpp.s

lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o


lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o: lib/AST/NodeFactory/HashingNodeFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/HashingNodeFactory.cpp

lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/HashingNodeFactory.cpp > CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.i

lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/HashingNodeFactory.cpp -o CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.s

lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o


lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o: lib/AST/NodeFactory/NodeFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/NodeFactory.cpp

lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/NodeFactory.cpp > CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.i

lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/NodeFactory.cpp -o CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.s

lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o


lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o: lib/AST/NodeFactory/SimplifyingNodeFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/SimplifyingNodeFactory.cpp

lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/SimplifyingNodeFactory.cpp > CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.i

lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/SimplifyingNodeFactory.cpp -o CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.s

lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o


lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o: lib/AST/CMakeFiles/AST.dir/flags.make
lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o: lib/AST/NodeFactory/TypeChecker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marko/workspace/src/stp-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o -c /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/TypeChecker.cpp

lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.i"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/TypeChecker.cpp > CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.i

lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.s"
	cd /home/marko/workspace/src/stp-master/lib/AST && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marko/workspace/src/stp-master/lib/AST/NodeFactory/TypeChecker.cpp -o CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.s

lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o.requires:

.PHONY : lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o.requires

lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o.provides: lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o.requires
	$(MAKE) -f lib/AST/CMakeFiles/AST.dir/build.make lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o.provides.build
.PHONY : lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o.provides

lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o.provides.build: lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o


AST: lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o
AST: lib/AST/CMakeFiles/AST.dir/build.make

.PHONY : AST

# Rule to build all files generated by this target.
lib/AST/CMakeFiles/AST.dir/build: AST

.PHONY : lib/AST/CMakeFiles/AST.dir/build

lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o.requires
lib/AST/CMakeFiles/AST.dir/requires: lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o.requires

.PHONY : lib/AST/CMakeFiles/AST.dir/requires

lib/AST/CMakeFiles/AST.dir/clean:
	cd /home/marko/workspace/src/stp-master/lib/AST && $(CMAKE_COMMAND) -P CMakeFiles/AST.dir/cmake_clean.cmake
.PHONY : lib/AST/CMakeFiles/AST.dir/clean

lib/AST/CMakeFiles/AST.dir/depend: lib/AST/ASTKind.cpp
lib/AST/CMakeFiles/AST.dir/depend: include/stp/AST/ASTKind.h
	cd /home/marko/workspace/src/stp-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/lib/AST /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/lib/AST /home/marko/workspace/src/stp-master/lib/AST/CMakeFiles/AST.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/AST/CMakeFiles/AST.dir/depend
