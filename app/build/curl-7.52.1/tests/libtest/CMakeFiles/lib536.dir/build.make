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
include tests/libtest/CMakeFiles/lib536.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib536.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib536.dir/flags.make

tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj: tests/libtest/CMakeFiles/lib536.dir/flags.make
tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj: tests/libtest/CMakeFiles/lib536.dir/includes_C.rsp
tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj: tests/libtest/lib536.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib536.dir/lib536.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/lib536.c

tests/libtest/CMakeFiles/lib536.dir/lib536.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib536.dir/lib536.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/lib536.c > CMakeFiles/lib536.dir/lib536.c.i

tests/libtest/CMakeFiles/lib536.dir/lib536.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib536.dir/lib536.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/lib536.c -o CMakeFiles/lib536.dir/lib536.c.s

tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj.requires:

.PHONY : tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj.requires

tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj.provides: tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib536.dir/build.make tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj.provides.build
.PHONY : tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj.provides

tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj.provides.build: tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj


tests/libtest/CMakeFiles/lib536.dir/first.c.obj: tests/libtest/CMakeFiles/lib536.dir/flags.make
tests/libtest/CMakeFiles/lib536.dir/first.c.obj: tests/libtest/CMakeFiles/lib536.dir/includes_C.rsp
tests/libtest/CMakeFiles/lib536.dir/first.c.obj: tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib536.dir/first.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib536.dir/first.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c

tests/libtest/CMakeFiles/lib536.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib536.dir/first.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c > CMakeFiles/lib536.dir/first.c.i

tests/libtest/CMakeFiles/lib536.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib536.dir/first.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/first.c -o CMakeFiles/lib536.dir/first.c.s

tests/libtest/CMakeFiles/lib536.dir/first.c.obj.requires:

.PHONY : tests/libtest/CMakeFiles/lib536.dir/first.c.obj.requires

tests/libtest/CMakeFiles/lib536.dir/first.c.obj.provides: tests/libtest/CMakeFiles/lib536.dir/first.c.obj.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib536.dir/build.make tests/libtest/CMakeFiles/lib536.dir/first.c.obj.provides.build
.PHONY : tests/libtest/CMakeFiles/lib536.dir/first.c.obj.provides

tests/libtest/CMakeFiles/lib536.dir/first.c.obj.provides.build: tests/libtest/CMakeFiles/lib536.dir/first.c.obj


tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj: tests/libtest/CMakeFiles/lib536.dir/flags.make
tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj: tests/libtest/CMakeFiles/lib536.dir/includes_C.rsp
tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj: tests/libtest/testutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib536.dir/testutil.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/testutil.c

tests/libtest/CMakeFiles/lib536.dir/testutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib536.dir/testutil.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/testutil.c > CMakeFiles/lib536.dir/testutil.c.i

tests/libtest/CMakeFiles/lib536.dir/testutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib536.dir/testutil.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/testutil.c -o CMakeFiles/lib536.dir/testutil.c.s

tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj.requires:

.PHONY : tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj.requires

tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj.provides: tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib536.dir/build.make tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj.provides.build
.PHONY : tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj.provides

tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj.provides.build: tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj


tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj: tests/libtest/CMakeFiles/lib536.dir/flags.make
tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj: tests/libtest/CMakeFiles/lib536.dir/includes_C.rsp
tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj: lib/warnless.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/lib/warnless.c

tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib536.dir/__/__/lib/warnless.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/lib/warnless.c > CMakeFiles/lib536.dir/__/__/lib/warnless.c.i

tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib536.dir/__/__/lib/warnless.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/lib/warnless.c -o CMakeFiles/lib536.dir/__/__/lib/warnless.c.s

tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj.requires:

.PHONY : tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj.requires

tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj.provides: tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib536.dir/build.make tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj.provides.build
.PHONY : tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj.provides

tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj.provides.build: tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj


# Object files for target lib536
lib536_OBJECTS = \
"CMakeFiles/lib536.dir/lib536.c.obj" \
"CMakeFiles/lib536.dir/first.c.obj" \
"CMakeFiles/lib536.dir/testutil.c.obj" \
"CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj"

# External object files for target lib536
lib536_EXTERNAL_OBJECTS =

tests/libtest/lib536.exe: tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj
tests/libtest/lib536.exe: tests/libtest/CMakeFiles/lib536.dir/first.c.obj
tests/libtest/lib536.exe: tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj
tests/libtest/lib536.exe: tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj
tests/libtest/lib536.exe: tests/libtest/CMakeFiles/lib536.dir/build.make
tests/libtest/lib536.exe: lib/libcurl_imp.lib
tests/libtest/lib536.exe: /usr/i686-w64-mingw32/lib/libz.dll.a
tests/libtest/lib536.exe: /usr/i686-w64-mingw32/lib/libssh2.dll.a
tests/libtest/lib536.exe: tests/libtest/CMakeFiles/lib536.dir/linklibs.rsp
tests/libtest/lib536.exe: tests/libtest/CMakeFiles/lib536.dir/objects1.rsp
tests/libtest/lib536.exe: tests/libtest/CMakeFiles/lib536.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable lib536.exe"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib536.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib536.dir/build: tests/libtest/lib536.exe

.PHONY : tests/libtest/CMakeFiles/lib536.dir/build

tests/libtest/CMakeFiles/lib536.dir/requires: tests/libtest/CMakeFiles/lib536.dir/lib536.c.obj.requires
tests/libtest/CMakeFiles/lib536.dir/requires: tests/libtest/CMakeFiles/lib536.dir/first.c.obj.requires
tests/libtest/CMakeFiles/lib536.dir/requires: tests/libtest/CMakeFiles/lib536.dir/testutil.c.obj.requires
tests/libtest/CMakeFiles/lib536.dir/requires: tests/libtest/CMakeFiles/lib536.dir/__/__/lib/warnless.c.obj.requires

.PHONY : tests/libtest/CMakeFiles/lib536.dir/requires

tests/libtest/CMakeFiles/lib536.dir/clean:
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib536.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib536.dir/clean

tests/libtest/CMakeFiles/lib536.dir/depend:
	cd /home/william/work/socket-app/app/build/curl-7.52.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/william/work/socket-app/app/build/curl-7.52.1 /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest /home/william/work/socket-app/app/build/curl-7.52.1 /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest /home/william/work/socket-app/app/build/curl-7.52.1/tests/libtest/CMakeFiles/lib536.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib536.dir/depend

