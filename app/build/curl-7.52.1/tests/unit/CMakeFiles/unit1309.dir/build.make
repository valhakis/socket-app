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
include tests/unit/CMakeFiles/unit1309.dir/depend.make

# Include the progress variables for this target.
include tests/unit/CMakeFiles/unit1309.dir/progress.make

# Include the compile flags for this target's objects.
include tests/unit/CMakeFiles/unit1309.dir/flags.make

tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj: tests/unit/CMakeFiles/unit1309.dir/flags.make
tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj: tests/unit/CMakeFiles/unit1309.dir/includes_C.rsp
tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj: tests/unit/unit1309.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/unit1309.dir/unit1309.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit/unit1309.c

tests/unit/CMakeFiles/unit1309.dir/unit1309.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/unit1309.dir/unit1309.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit/unit1309.c > CMakeFiles/unit1309.dir/unit1309.c.i

tests/unit/CMakeFiles/unit1309.dir/unit1309.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/unit1309.dir/unit1309.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit/unit1309.c -o CMakeFiles/unit1309.dir/unit1309.c.s

tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj.requires:

.PHONY : tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj.requires

tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj.provides: tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj.requires
	$(MAKE) -f tests/unit/CMakeFiles/unit1309.dir/build.make tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj.provides.build
.PHONY : tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj.provides

tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj.provides.build: tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj


tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj: tests/unit/CMakeFiles/unit1309.dir/flags.make
tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj: tests/unit/CMakeFiles/unit1309.dir/includes_C.rsp
tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj: tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/unit1309.dir/__/libtest/first.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c

tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/unit1309.dir/__/libtest/first.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c > CMakeFiles/unit1309.dir/__/libtest/first.c.i

tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/unit1309.dir/__/libtest/first.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c -o CMakeFiles/unit1309.dir/__/libtest/first.c.s

tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj.requires:

.PHONY : tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj.requires

tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj.provides: tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj.requires
	$(MAKE) -f tests/unit/CMakeFiles/unit1309.dir/build.make tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj.provides.build
.PHONY : tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj.provides

tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj.provides.build: tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj


# Object files for target unit1309
unit1309_OBJECTS = \
"CMakeFiles/unit1309.dir/unit1309.c.obj" \
"CMakeFiles/unit1309.dir/__/libtest/first.c.obj"

# External object files for target unit1309
unit1309_EXTERNAL_OBJECTS =

tests/unit/unit1309.exe: tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj
tests/unit/unit1309.exe: tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj
tests/unit/unit1309.exe: tests/unit/CMakeFiles/unit1309.dir/build.make
tests/unit/unit1309.exe: lib/libcurl_imp.lib
tests/unit/unit1309.exe: /usr/i686-w64-mingw32/lib/libz.dll.a
tests/unit/unit1309.exe: /usr/i686-w64-mingw32/lib/libssh2.dll.a
tests/unit/unit1309.exe: tests/unit/CMakeFiles/unit1309.dir/linklibs.rsp
tests/unit/unit1309.exe: tests/unit/CMakeFiles/unit1309.dir/objects1.rsp
tests/unit/unit1309.exe: tests/unit/CMakeFiles/unit1309.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable unit1309.exe"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unit1309.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/unit/CMakeFiles/unit1309.dir/build: tests/unit/unit1309.exe

.PHONY : tests/unit/CMakeFiles/unit1309.dir/build

tests/unit/CMakeFiles/unit1309.dir/requires: tests/unit/CMakeFiles/unit1309.dir/unit1309.c.obj.requires
tests/unit/CMakeFiles/unit1309.dir/requires: tests/unit/CMakeFiles/unit1309.dir/__/libtest/first.c.obj.requires

.PHONY : tests/unit/CMakeFiles/unit1309.dir/requires

tests/unit/CMakeFiles/unit1309.dir/clean:
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit && $(CMAKE_COMMAND) -P CMakeFiles/unit1309.dir/cmake_clean.cmake
.PHONY : tests/unit/CMakeFiles/unit1309.dir/clean

tests/unit/CMakeFiles/unit1309.dir/depend:
	cd /home/william/work/socket-app/app/build/curl-7.52.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/william/work/socket-app/app/build/curl-7.52.1 /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit /home/william/work/socket-app/app/build/curl-7.52.1 /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit /home/william/work/socket-app/app/build/curl-7.52.1/tests/unit/CMakeFiles/unit1309.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/unit/CMakeFiles/unit1309.dir/depend
