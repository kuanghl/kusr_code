# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kuanghongliang/Documents/vscode_projects/khl_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kuanghongliang/Documents/vscode_projects/khl_project/build

# Utility rule file for ContinuousSubmit.

# Include the progress variables for this target.
include 3rd/libuv/CMakeFiles/ContinuousSubmit.dir/progress.make

3rd/libuv/CMakeFiles/ContinuousSubmit:
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/3rd/libuv && /usr/local/bin/ctest -D ContinuousSubmit

ContinuousSubmit: 3rd/libuv/CMakeFiles/ContinuousSubmit
ContinuousSubmit: 3rd/libuv/CMakeFiles/ContinuousSubmit.dir/build.make

.PHONY : ContinuousSubmit

# Rule to build all files generated by this target.
3rd/libuv/CMakeFiles/ContinuousSubmit.dir/build: ContinuousSubmit

.PHONY : 3rd/libuv/CMakeFiles/ContinuousSubmit.dir/build

3rd/libuv/CMakeFiles/ContinuousSubmit.dir/clean:
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/3rd/libuv && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousSubmit.dir/cmake_clean.cmake
.PHONY : 3rd/libuv/CMakeFiles/ContinuousSubmit.dir/clean

3rd/libuv/CMakeFiles/ContinuousSubmit.dir/depend:
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kuanghongliang/Documents/vscode_projects/khl_project /home/kuanghongliang/Documents/vscode_projects/khl_project/3rd/libuv /home/kuanghongliang/Documents/vscode_projects/khl_project/build /home/kuanghongliang/Documents/vscode_projects/khl_project/build/3rd/libuv /home/kuanghongliang/Documents/vscode_projects/khl_project/build/3rd/libuv/CMakeFiles/ContinuousSubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rd/libuv/CMakeFiles/ContinuousSubmit.dir/depend

