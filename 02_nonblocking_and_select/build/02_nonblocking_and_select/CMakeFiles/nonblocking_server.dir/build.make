# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anon/work/master2_1/02_nonblocking_and_select

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anon/work/master2_1/02_nonblocking_and_select/build

# Include any dependencies generated for this target.
include 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/depend.make

# Include the progress variables for this target.
include 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/progress.make

# Include the compile flags for this target's objects.
include 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/flags.make

02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/nonblocking_server.c.o: 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/flags.make
02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/nonblocking_server.c.o: ../02_nonblocking_and_select/nonblocking_server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anon/work/master2_1/02_nonblocking_and_select/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/nonblocking_server.c.o"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/02_nonblocking_and_select && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/nonblocking_server.dir/nonblocking_server.c.o   -c /home/anon/work/master2_1/02_nonblocking_and_select/02_nonblocking_and_select/nonblocking_server.c

02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/nonblocking_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nonblocking_server.dir/nonblocking_server.c.i"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/02_nonblocking_and_select && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anon/work/master2_1/02_nonblocking_and_select/02_nonblocking_and_select/nonblocking_server.c > CMakeFiles/nonblocking_server.dir/nonblocking_server.c.i

02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/nonblocking_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nonblocking_server.dir/nonblocking_server.c.s"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/02_nonblocking_and_select && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anon/work/master2_1/02_nonblocking_and_select/02_nonblocking_and_select/nonblocking_server.c -o CMakeFiles/nonblocking_server.dir/nonblocking_server.c.s

# Object files for target nonblocking_server
nonblocking_server_OBJECTS = \
"CMakeFiles/nonblocking_server.dir/nonblocking_server.c.o"

# External object files for target nonblocking_server
nonblocking_server_EXTERNAL_OBJECTS =

bin/nonblocking_server: 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/nonblocking_server.c.o
bin/nonblocking_server: 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/build.make
bin/nonblocking_server: lib/libYT.a
bin/nonblocking_server: 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anon/work/master2_1/02_nonblocking_and_select/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/nonblocking_server"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/02_nonblocking_and_select && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nonblocking_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/build: bin/nonblocking_server

.PHONY : 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/build

02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/clean:
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/02_nonblocking_and_select && $(CMAKE_COMMAND) -P CMakeFiles/nonblocking_server.dir/cmake_clean.cmake
.PHONY : 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/clean

02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/depend:
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anon/work/master2_1/02_nonblocking_and_select /home/anon/work/master2_1/02_nonblocking_and_select/02_nonblocking_and_select /home/anon/work/master2_1/02_nonblocking_and_select/build /home/anon/work/master2_1/02_nonblocking_and_select/build/02_nonblocking_and_select /home/anon/work/master2_1/02_nonblocking_and_select/build/02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 02_nonblocking_and_select/CMakeFiles/nonblocking_server.dir/depend

