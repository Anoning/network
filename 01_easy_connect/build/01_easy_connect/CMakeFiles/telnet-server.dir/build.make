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
CMAKE_SOURCE_DIR = /home/anon/work/master2_1/01_easy_connect

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anon/work/master2_1/01_easy_connect/build

# Include any dependencies generated for this target.
include 01_easy_connect/CMakeFiles/telnet-server.dir/depend.make

# Include the progress variables for this target.
include 01_easy_connect/CMakeFiles/telnet-server.dir/progress.make

# Include the compile flags for this target's objects.
include 01_easy_connect/CMakeFiles/telnet-server.dir/flags.make

01_easy_connect/CMakeFiles/telnet-server.dir/telnet-server.c.o: 01_easy_connect/CMakeFiles/telnet-server.dir/flags.make
01_easy_connect/CMakeFiles/telnet-server.dir/telnet-server.c.o: ../01_easy_connect/telnet-server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anon/work/master2_1/01_easy_connect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 01_easy_connect/CMakeFiles/telnet-server.dir/telnet-server.c.o"
	cd /home/anon/work/master2_1/01_easy_connect/build/01_easy_connect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/telnet-server.dir/telnet-server.c.o   -c /home/anon/work/master2_1/01_easy_connect/01_easy_connect/telnet-server.c

01_easy_connect/CMakeFiles/telnet-server.dir/telnet-server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/telnet-server.dir/telnet-server.c.i"
	cd /home/anon/work/master2_1/01_easy_connect/build/01_easy_connect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anon/work/master2_1/01_easy_connect/01_easy_connect/telnet-server.c > CMakeFiles/telnet-server.dir/telnet-server.c.i

01_easy_connect/CMakeFiles/telnet-server.dir/telnet-server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/telnet-server.dir/telnet-server.c.s"
	cd /home/anon/work/master2_1/01_easy_connect/build/01_easy_connect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anon/work/master2_1/01_easy_connect/01_easy_connect/telnet-server.c -o CMakeFiles/telnet-server.dir/telnet-server.c.s

# Object files for target telnet-server
telnet__server_OBJECTS = \
"CMakeFiles/telnet-server.dir/telnet-server.c.o"

# External object files for target telnet-server
telnet__server_EXTERNAL_OBJECTS =

bin/telnet-server: 01_easy_connect/CMakeFiles/telnet-server.dir/telnet-server.c.o
bin/telnet-server: 01_easy_connect/CMakeFiles/telnet-server.dir/build.make
bin/telnet-server: lib/libYT.a
bin/telnet-server: 01_easy_connect/CMakeFiles/telnet-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anon/work/master2_1/01_easy_connect/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/telnet-server"
	cd /home/anon/work/master2_1/01_easy_connect/build/01_easy_connect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/telnet-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
01_easy_connect/CMakeFiles/telnet-server.dir/build: bin/telnet-server

.PHONY : 01_easy_connect/CMakeFiles/telnet-server.dir/build

01_easy_connect/CMakeFiles/telnet-server.dir/clean:
	cd /home/anon/work/master2_1/01_easy_connect/build/01_easy_connect && $(CMAKE_COMMAND) -P CMakeFiles/telnet-server.dir/cmake_clean.cmake
.PHONY : 01_easy_connect/CMakeFiles/telnet-server.dir/clean

01_easy_connect/CMakeFiles/telnet-server.dir/depend:
	cd /home/anon/work/master2_1/01_easy_connect/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anon/work/master2_1/01_easy_connect /home/anon/work/master2_1/01_easy_connect/01_easy_connect /home/anon/work/master2_1/01_easy_connect/build /home/anon/work/master2_1/01_easy_connect/build/01_easy_connect /home/anon/work/master2_1/01_easy_connect/build/01_easy_connect/CMakeFiles/telnet-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 01_easy_connect/CMakeFiles/telnet-server.dir/depend

