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
CMAKE_SOURCE_DIR = /home/anon/work/master2_1/my_network

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anon/work/master2_1/my_network/build

# Include any dependencies generated for this target.
include mid_homework/CMakeFiles/telnet-client.dir/depend.make

# Include the progress variables for this target.
include mid_homework/CMakeFiles/telnet-client.dir/progress.make

# Include the compile flags for this target's objects.
include mid_homework/CMakeFiles/telnet-client.dir/flags.make

mid_homework/CMakeFiles/telnet-client.dir/telnet-client.c.o: mid_homework/CMakeFiles/telnet-client.dir/flags.make
mid_homework/CMakeFiles/telnet-client.dir/telnet-client.c.o: ../mid_homework/telnet-client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anon/work/master2_1/my_network/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object mid_homework/CMakeFiles/telnet-client.dir/telnet-client.c.o"
	cd /home/anon/work/master2_1/my_network/build/mid_homework && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/telnet-client.dir/telnet-client.c.o   -c /home/anon/work/master2_1/my_network/mid_homework/telnet-client.c

mid_homework/CMakeFiles/telnet-client.dir/telnet-client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/telnet-client.dir/telnet-client.c.i"
	cd /home/anon/work/master2_1/my_network/build/mid_homework && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anon/work/master2_1/my_network/mid_homework/telnet-client.c > CMakeFiles/telnet-client.dir/telnet-client.c.i

mid_homework/CMakeFiles/telnet-client.dir/telnet-client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/telnet-client.dir/telnet-client.c.s"
	cd /home/anon/work/master2_1/my_network/build/mid_homework && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anon/work/master2_1/my_network/mid_homework/telnet-client.c -o CMakeFiles/telnet-client.dir/telnet-client.c.s

# Object files for target telnet-client
telnet__client_OBJECTS = \
"CMakeFiles/telnet-client.dir/telnet-client.c.o"

# External object files for target telnet-client
telnet__client_EXTERNAL_OBJECTS =

bin/telnet-client: mid_homework/CMakeFiles/telnet-client.dir/telnet-client.c.o
bin/telnet-client: mid_homework/CMakeFiles/telnet-client.dir/build.make
bin/telnet-client: lib/libYT.a
bin/telnet-client: mid_homework/CMakeFiles/telnet-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anon/work/master2_1/my_network/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/telnet-client"
	cd /home/anon/work/master2_1/my_network/build/mid_homework && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/telnet-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mid_homework/CMakeFiles/telnet-client.dir/build: bin/telnet-client

.PHONY : mid_homework/CMakeFiles/telnet-client.dir/build

mid_homework/CMakeFiles/telnet-client.dir/clean:
	cd /home/anon/work/master2_1/my_network/build/mid_homework && $(CMAKE_COMMAND) -P CMakeFiles/telnet-client.dir/cmake_clean.cmake
.PHONY : mid_homework/CMakeFiles/telnet-client.dir/clean

mid_homework/CMakeFiles/telnet-client.dir/depend:
	cd /home/anon/work/master2_1/my_network/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anon/work/master2_1/my_network /home/anon/work/master2_1/my_network/mid_homework /home/anon/work/master2_1/my_network/build /home/anon/work/master2_1/my_network/build/mid_homework /home/anon/work/master2_1/my_network/build/mid_homework/CMakeFiles/telnet-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mid_homework/CMakeFiles/telnet-client.dir/depend

