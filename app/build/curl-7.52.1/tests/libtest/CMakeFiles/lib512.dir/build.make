# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/william/work/socket-app/app/build/curl-7.52.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/william/work/socket-app/app/build/curl-7.52.1

# Include any dependencies generated for this target.
include tests/libtest/CMakeFiles/lib512.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib512.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib512.dir/flags.make

tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj: tests/libtest/CMakeFiles/lib512.dir/flags.make
tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj: tests/libtest/CMakeFiles/lib512.dir/includes_C.rsp
tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj: tests/libtest/lib512.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib512.dir/lib512.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/lib512.c

tests/libtest/CMakeFiles/lib512.dir/lib512.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib512.dir/lib512.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/lib512.c > CMakeFiles/lib512.dir/lib512.c.i

tests/libtest/CMakeFiles/lib512.dir/lib512.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib512.dir/lib512.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/lib512.c -o CMakeFiles/lib512.dir/lib512.c.s

tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj.requires:

.PHONY : tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj.requires

tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj.provides: tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib512.dir/build.make tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj.provides.build
.PHONY : tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj.provides

tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj.provides.build: tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj


tests/libtest/CMakeFiles/lib512.dir/first.c.obj: tests/libtest/CMakeFiles/lib512.dir/flags.make
tests/libtest/CMakeFiles/lib512.dir/first.c.obj: tests/libtest/CMakeFiles/lib512.dir/includes_C.rsp
tests/libtest/CMakeFiles/lib512.dir/first.c.obj: tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib512.dir/first.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib512.dir/first.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c

tests/libtest/CMakeFiles/lib512.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib512.dir/first.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c > CMakeFiles/lib512.dir/first.c.i

tests/libtest/CMakeFiles/lib512.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib512.dir/first.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c -o CMakeFiles/lib512.dir/first.c.s

tests/libtest/CMakeFiles/lib512.dir/first.c.obj.requires:

.PHONY : tests/libtest/CMakeFiles/lib512.dir/first.c.obj.requires

tests/libtest/CMakeFiles/lib512.dir/first.c.obj.provides: tests/libtest/CMakeFiles/lib512.dir/first.c.obj.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib512.dir/build.make tests/libtest/CMakeFiles/lib512.dir/first.c.obj.provides.build
.PHONY : tests/libtest/CMakeFiles/lib512.dir/first.c.obj.provides

tests/libtest/CMakeFiles/lib512.dir/first.c.obj.provides.build: tests/libtest/CMakeFiles/lib512.dir/first.c.obj


# Object files for target lib512
lib512_OBJECTS = \
"CMakeFiles/lib512.dir/lib512.c.obj" \
"CMakeFiles/lib512.dir/first.c.obj"

# External object files for target lib512
lib512_EXTERNAL_OBJECTS =

tests/libtest/lib512.exe: tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj
tests/libtest/lib512.exe: tests/libtest/CMakeFiles/lib512.dir/first.c.obj
tests/libtest/lib512.exe: tests/libtest/CMakeFiles/lib512.dir/build.make
tests/libtest/lib512.exe: lib/libcurl_imp.lib
tests/libtest/lib512.exe: /usr/i686-w64-mingw32/lib/libz.dll.a
tests/libtest/lib512.exe: /usr/i686-w64-mingw32/lib/libssh2.dll.a
tests/libtest/lib512.exe: tests/libtest/CMakeFiles/lib512.dir/linklibs.rsp
tests/libtest/lib512.exe: tests/libtest/CMakeFiles/lib512.dir/objects1.rsp
tests/libtest/lib512.exe: tests/libtest/CMakeFiles/lib512.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable lib512.exe"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib512.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib512.dir/build: tests/libtest/lib512.exe

.PHONY : tests/libtest/CMakeFiles/lib512.dir/build

tests/libtest/CMakeFiles/lib512.dir/requires: tests/libtest/CMakeFiles/lib512.dir/lib512.c.obj.requires
tests/libtest/CMakeFiles/lib512.dir/requires: tests/libtest/CMakeFiles/lib512.dir/first.c.obj.requires

.PHONY : tests/libtest/CMakeFiles/lib512.dir/requires

tests/libtest/CMakeFiles/lib512.dir/clean:
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib512.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib512.dir/clean

tests/libtest/CMakeFiles/lib512.dir/depend:
	cd /home/william/work/socket-app/app/build/curl-7.52.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/william/work/socket-app/app/build/curl-7.52.1 /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest /home/william/work/socket-app/app/build/curl-7.52.1 /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/CMakeFiles/lib512.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib512.dir/depend
