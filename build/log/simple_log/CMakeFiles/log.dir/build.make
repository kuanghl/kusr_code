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
include log/simple_log/CMakeFiles/log.dir/depend.make

# Include the progress variables for this target.
include log/simple_log/CMakeFiles/log.dir/progress.make

# Include the compile flags for this target's objects.
include log/simple_log/CMakeFiles/log.dir/flags.make

log/simple_log/CMakeFiles/log.dir/log.c.o: log/simple_log/CMakeFiles/log.dir/flags.make
log/simple_log/CMakeFiles/log.dir/log.c.o: ../log/simple_log/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kuanghongliang/Documents/vscode_projects/kusr_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object log/simple_log/CMakeFiles/log.dir/log.c.o"
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/log/simple_log && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/log.dir/log.c.o -c /home/kuanghongliang/Documents/vscode_projects/kusr_code/log/simple_log/log.c

log/simple_log/CMakeFiles/log.dir/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log.dir/log.c.i"
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/log/simple_log && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kuanghongliang/Documents/vscode_projects/kusr_code/log/simple_log/log.c > CMakeFiles/log.dir/log.c.i

log/simple_log/CMakeFiles/log.dir/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log.dir/log.c.s"
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/log/simple_log && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kuanghongliang/Documents/vscode_projects/kusr_code/log/simple_log/log.c -o CMakeFiles/log.dir/log.c.s

# Object files for target log
log_OBJECTS = \
"CMakeFiles/log.dir/log.c.o"

# External object files for target log
log_EXTERNAL_OBJECTS =

log/simple_log/liblog.so.SOVERSION: log/simple_log/CMakeFiles/log.dir/log.c.o
log/simple_log/liblog.so.SOVERSION: log/simple_log/CMakeFiles/log.dir/build.make
log/simple_log/liblog.so.SOVERSION: log/simple_log/CMakeFiles/log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kuanghongliang/Documents/vscode_projects/kusr_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library liblog.so"
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/log/simple_log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log.dir/link.txt --verbose=$(VERBOSE)
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/log/simple_log && $(CMAKE_COMMAND) -E cmake_symlink_library liblog.so.SOVERSION liblog.so.SOVERSION liblog.so

log/simple_log/liblog.so: log/simple_log/liblog.so.SOVERSION
	@$(CMAKE_COMMAND) -E touch_nocreate log/simple_log/liblog.so

# Rule to build all files generated by this target.
log/simple_log/CMakeFiles/log.dir/build: log/simple_log/liblog.so

.PHONY : log/simple_log/CMakeFiles/log.dir/build

log/simple_log/CMakeFiles/log.dir/clean:
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/log/simple_log && $(CMAKE_COMMAND) -P CMakeFiles/log.dir/cmake_clean.cmake
.PHONY : log/simple_log/CMakeFiles/log.dir/clean

log/simple_log/CMakeFiles/log.dir/depend:
	cd /home/kuanghongliang/Documents/vscode_projects/kusr_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kuanghongliang/Documents/vscode_projects/kusr_code /home/kuanghongliang/Documents/vscode_projects/kusr_code/log/simple_log /home/kuanghongliang/Documents/vscode_projects/kusr_code/build /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/log/simple_log /home/kuanghongliang/Documents/vscode_projects/kusr_code/build/log/simple_log/CMakeFiles/log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : log/simple_log/CMakeFiles/log.dir/depend

