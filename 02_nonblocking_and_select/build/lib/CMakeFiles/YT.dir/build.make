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
include lib/CMakeFiles/YT.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/YT.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/YT.dir/flags.make

lib/CMakeFiles/YT.dir/tcp_server.c.o: lib/CMakeFiles/YT.dir/flags.make
lib/CMakeFiles/YT.dir/tcp_server.c.o: ../lib/tcp_server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anon/work/master2_1/02_nonblocking_and_select/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/CMakeFiles/YT.dir/tcp_server.c.o"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/YT.dir/tcp_server.c.o   -c /home/anon/work/master2_1/02_nonblocking_and_select/lib/tcp_server.c

lib/CMakeFiles/YT.dir/tcp_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/YT.dir/tcp_server.c.i"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anon/work/master2_1/02_nonblocking_and_select/lib/tcp_server.c > CMakeFiles/YT.dir/tcp_server.c.i

lib/CMakeFiles/YT.dir/tcp_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/YT.dir/tcp_server.c.s"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anon/work/master2_1/02_nonblocking_and_select/lib/tcp_server.c -o CMakeFiles/YT.dir/tcp_server.c.s

lib/CMakeFiles/YT.dir/tcp_client.c.o: lib/CMakeFiles/YT.dir/flags.make
lib/CMakeFiles/YT.dir/tcp_client.c.o: ../lib/tcp_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anon/work/master2_1/02_nonblocking_and_select/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/CMakeFiles/YT.dir/tcp_client.c.o"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/YT.dir/tcp_client.c.o   -c /home/anon/work/master2_1/02_nonblocking_and_select/lib/tcp_client.c

lib/CMakeFiles/YT.dir/tcp_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/YT.dir/tcp_client.c.i"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anon/work/master2_1/02_nonblocking_and_select/lib/tcp_client.c > CMakeFiles/YT.dir/tcp_client.c.i

lib/CMakeFiles/YT.dir/tcp_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/YT.dir/tcp_client.c.s"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anon/work/master2_1/02_nonblocking_and_select/lib/tcp_client.c -o CMakeFiles/YT.dir/tcp_client.c.s

# Object files for target YT
YT_OBJECTS = \
"CMakeFiles/YT.dir/tcp_server.c.o" \
"CMakeFiles/YT.dir/tcp_client.c.o"

# External object files for target YT
YT_EXTERNAL_OBJECTS =

lib/libYT.a: lib/CMakeFiles/YT.dir/tcp_server.c.o
lib/libYT.a: lib/CMakeFiles/YT.dir/tcp_client.c.o
lib/libYT.a: lib/CMakeFiles/YT.dir/build.make
lib/libYT.a: lib/CMakeFiles/YT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anon/work/master2_1/02_nonblocking_and_select/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libYT.a"
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/YT.dir/cmake_clean_target.cmake
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/YT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/YT.dir/build: lib/libYT.a

.PHONY : lib/CMakeFiles/YT.dir/build

lib/CMakeFiles/YT.dir/clean:
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/YT.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/YT.dir/clean

lib/CMakeFiles/YT.dir/depend:
	cd /home/anon/work/master2_1/02_nonblocking_and_select/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anon/work/master2_1/02_nonblocking_and_select /home/anon/work/master2_1/02_nonblocking_and_select/lib /home/anon/work/master2_1/02_nonblocking_and_select/build /home/anon/work/master2_1/02_nonblocking_and_select/build/lib /home/anon/work/master2_1/02_nonblocking_and_select/build/lib/CMakeFiles/YT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/YT.dir/depend
