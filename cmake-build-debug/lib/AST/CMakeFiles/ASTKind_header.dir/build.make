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

# Utility rule file for ASTKind_header.

# Include the progress variables for this target.
include lib/AST/CMakeFiles/ASTKind_header.dir/progress.make

lib/AST/CMakeFiles/ASTKind_header: include/stp/AST/ASTKind.h


lib/AST/ASTKind.cpp: ../lib/AST/ASTKind.kinds
lib/AST/ASTKind.cpp: ../lib/AST/genkinds.pl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/marko/workspace/src/stp-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ASTKind.cpp, ../../include/stp/AST/ASTKind.h"
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/AST && /usr/bin/perl /home/marko/workspace/src/stp-master/lib/AST/genkinds.pl --file /home/marko/workspace/src/stp-master/lib/AST/ASTKind.kinds
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/AST && /home/marko/software/bin/cmake -E make_directory /home/marko/workspace/src/stp-master/cmake-build-debug/include/stp/AST
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/AST && /home/marko/software/bin/cmake -E rename /home/marko/workspace/src/stp-master/cmake-build-debug/lib/AST/ASTKind.h /home/marko/workspace/src/stp-master/cmake-build-debug/include/stp/AST/ASTKind.h

include/stp/AST/ASTKind.h: lib/AST/ASTKind.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate include/stp/AST/ASTKind.h

ASTKind_header: lib/AST/CMakeFiles/ASTKind_header
ASTKind_header: lib/AST/ASTKind.cpp
ASTKind_header: include/stp/AST/ASTKind.h
ASTKind_header: lib/AST/CMakeFiles/ASTKind_header.dir/build.make

.PHONY : ASTKind_header

# Rule to build all files generated by this target.
lib/AST/CMakeFiles/ASTKind_header.dir/build: ASTKind_header

.PHONY : lib/AST/CMakeFiles/ASTKind_header.dir/build

lib/AST/CMakeFiles/ASTKind_header.dir/clean:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug/lib/AST && $(CMAKE_COMMAND) -P CMakeFiles/ASTKind_header.dir/cmake_clean.cmake
.PHONY : lib/AST/CMakeFiles/ASTKind_header.dir/clean

lib/AST/CMakeFiles/ASTKind_header.dir/depend:
	cd /home/marko/workspace/src/stp-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marko/workspace/src/stp-master /home/marko/workspace/src/stp-master/lib/AST /home/marko/workspace/src/stp-master/cmake-build-debug /home/marko/workspace/src/stp-master/cmake-build-debug/lib/AST /home/marko/workspace/src/stp-master/cmake-build-debug/lib/AST/CMakeFiles/ASTKind_header.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/AST/CMakeFiles/ASTKind_header.dir/depend
