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
CMAKE_SOURCE_DIR = /home/kuanghongliang/Documents/vscode_projects/kusr_code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kuanghongliang/Documents/vscode_projects/kusr_code/build

# Include any dependencies generated for this target.
include test/googletest/googletest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include test/googletest/googletest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include test/googletest/googletest/CMakeFiles/gtest_main.dir/flags.make

test/googletest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: test/googletest/googletest/CMakeFiles/gtest_main.dir/flags.make
test/googletest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: ../test/googletest/googletest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kuanghongliang/Documents/vscode_projects/kusr_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/googletest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/test/googletest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /home/kuanghongliang/Documents/vscode_projects/kusr_code/test/googletest/googletest/src/gtest_main.cc

test/googletest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/test/googletest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kuanghongliang/Documents/vscode_projects/kusr_code/test/googletest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

test/googletest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/test/googletest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kuanghongliang/Documents/vscode_projects/kusr_code/test/googletest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

lib/libgtest_main.so.1.13.0: test/googletest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
lib/libgtest_main.so.1.13.0: test/googletest/googletest/CMakeFiles/gtest_main.dir/build.make
lib/libgtest_main.so.1.13.0: lib/libgtest.so.1.13.0
lib/libgtest_main.so.1.13.0: test/googletest/googletest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kuanghongliang/Documents/vscode_projects/kusr_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../lib/libgtest_main.so"
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/test/googletest/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/test/googletest/googletest && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../lib/libgtest_main.so.1.13.0 ../../../lib/libgtest_main.so.1.13.0 ../../../lib/libgtest_main.so

lib/libgtest_main.so: lib/libgtest_main.so.1.13.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libgtest_main.so

# Rule to build all files generated by this target.
test/googletest/googletest/CMakeFiles/gtest_main.dir/build: lib/libgtest_main.so

.PHONY : test/googletest/googletest/CMakeFiles/gtest_main.dir/build

test/googletest/googletest/CMakeFiles/gtest_main.dir/clean:
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/test/googletest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : test/googletest/googletest/CMakeFiles/gtest_main.dir/clean

test/googletest/googletest/CMakeFiles/gtest_main.dir/depend:
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kuanghongliang/Documents/vscode_projects/kusr_code /home/kuanghongliang/Documents/vscode_projects/kusr_code/test/googletest/googletest /home/kuanghongliang/Documents/vscode_projects/kusr_code/build /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/test/googletest/googletest /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/test/googletest/googletest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/googletest/googletest/CMakeFiles/gtest_main.dir/depend

