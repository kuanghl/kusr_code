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

# Include any dependencies generated for this target.
include src/server/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/server.dir/flags.make

src/server/CMakeFiles/server.dir/server_main.c.o: src/server/CMakeFiles/server.dir/flags.make
src/server/CMakeFiles/server.dir/server_main.c.o: ../src/server/server_main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kuanghongliang/Documents/vscode_projects/khl_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/server/CMakeFiles/server.dir/server_main.c.o"
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server.dir/server_main.c.o -c /home/kuanghongliang/Documents/vscode_projects/khl_project/src/server/server_main.c

src/server/CMakeFiles/server.dir/server_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server.dir/server_main.c.i"
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kuanghongliang/Documents/vscode_projects/khl_project/src/server/server_main.c > CMakeFiles/server.dir/server_main.c.i

src/server/CMakeFiles/server.dir/server_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server.dir/server_main.c.s"
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kuanghongliang/Documents/vscode_projects/khl_project/src/server/server_main.c -o CMakeFiles/server.dir/server_main.c.s

src/server/CMakeFiles/server.dir/__/__/log/simple_log/log.c.o: src/server/CMakeFiles/server.dir/flags.make
src/server/CMakeFiles/server.dir/__/__/log/simple_log/log.c.o: ../log/simple_log/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kuanghongliang/Documents/vscode_projects/khl_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/server/CMakeFiles/server.dir/__/__/log/simple_log/log.c.o"
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server.dir/__/__/log/simple_log/log.c.o -c /home/kuanghongliang/Documents/vscode_projects/khl_project/log/simple_log/log.c

src/server/CMakeFiles/server.dir/__/__/log/simple_log/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server.dir/__/__/log/simple_log/log.c.i"
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kuanghongliang/Documents/vscode_projects/khl_project/log/simple_log/log.c > CMakeFiles/server.dir/__/__/log/simple_log/log.c.i

src/server/CMakeFiles/server.dir/__/__/log/simple_log/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server.dir/__/__/log/simple_log/log.c.s"
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kuanghongliang/Documents/vscode_projects/khl_project/log/simple_log/log.c -o CMakeFiles/server.dir/__/__/log/simple_log/log.c.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/server_main.c.o" \
"CMakeFiles/server.dir/__/__/log/simple_log/log.c.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

bin/server: src/server/CMakeFiles/server.dir/server_main.c.o
bin/server: src/server/CMakeFiles/server.dir/__/__/log/simple_log/log.c.o
bin/server: src/server/CMakeFiles/server.dir/build.make
bin/server: 3rd/libuv/libuv.a
bin/server: src/server/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kuanghongliang/Documents/vscode_projects/khl_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ../../bin/server"
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/server.dir/build: bin/server

.PHONY : src/server/CMakeFiles/server.dir/build

src/server/CMakeFiles/server.dir/clean:
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/server.dir/clean

src/server/CMakeFiles/server.dir/depend:
	cd /home/kuanghongliang/Documents/vscode_projects/khl_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kuanghongliang/Documents/vscode_projects/khl_project /home/kuanghongliang/Documents/vscode_projects/khl_project/src/server /home/kuanghongliang/Documents/vscode_projects/khl_project/build /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server /home/kuanghongliang/Documents/vscode_projects/khl_project/build/src/server/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/server.dir/depend

