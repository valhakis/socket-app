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
include tests/server/CMakeFiles/tftpd.dir/depend.make

# Include the progress variables for this target.
include tests/server/CMakeFiles/tftpd.dir/progress.make

# Include the compile flags for this target's objects.
include tests/server/CMakeFiles/tftpd.dir/flags.make

tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj: lib/mprintf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/lib/mprintf.c

tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/lib/mprintf.c > CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.i

tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/lib/mprintf.c -o CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.s

tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj


tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj: lib/nonblock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/lib/nonblock.c

tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/lib/nonblock.c > CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.i

tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/lib/nonblock.c -o CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.s

tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj


tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj: lib/strtoofft.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/lib/strtoofft.c

tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/lib/strtoofft.c > CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.i

tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/lib/strtoofft.c -o CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.s

tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj


tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj: lib/timeval.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/lib/timeval.c

tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/__/__/lib/timeval.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/lib/timeval.c > CMakeFiles/tftpd.dir/__/__/lib/timeval.c.i

tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/__/__/lib/timeval.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/lib/timeval.c -o CMakeFiles/tftpd.dir/__/__/lib/timeval.c.s

tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj


tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj: lib/warnless.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/lib/warnless.c

tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/__/__/lib/warnless.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/lib/warnless.c > CMakeFiles/tftpd.dir/__/__/lib/warnless.c.i

tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/__/__/lib/warnless.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/lib/warnless.c -o CMakeFiles/tftpd.dir/__/__/lib/warnless.c.s

tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj


tests/server/CMakeFiles/tftpd.dir/getpart.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/getpart.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/getpart.c.obj: tests/server/getpart.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object tests/server/CMakeFiles/tftpd.dir/getpart.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/getpart.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/getpart.c

tests/server/CMakeFiles/tftpd.dir/getpart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/getpart.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/getpart.c > CMakeFiles/tftpd.dir/getpart.c.i

tests/server/CMakeFiles/tftpd.dir/getpart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/getpart.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/getpart.c -o CMakeFiles/tftpd.dir/getpart.c.s

tests/server/CMakeFiles/tftpd.dir/getpart.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/getpart.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/getpart.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/getpart.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/getpart.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/getpart.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/getpart.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/getpart.c.obj


tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj: lib/base64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/lib/base64.c

tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/__/__/lib/base64.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/lib/base64.c > CMakeFiles/tftpd.dir/__/__/lib/base64.c.i

tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/__/__/lib/base64.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/lib/base64.c -o CMakeFiles/tftpd.dir/__/__/lib/base64.c.s

tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj


tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj: lib/memdebug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/lib/memdebug.c

tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/lib/memdebug.c > CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.i

tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/lib/memdebug.c -o CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.s

tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj


tests/server/CMakeFiles/tftpd.dir/util.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/util.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/util.c.obj: tests/server/util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object tests/server/CMakeFiles/tftpd.dir/util.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/util.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/util.c

tests/server/CMakeFiles/tftpd.dir/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/util.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/util.c > CMakeFiles/tftpd.dir/util.c.i

tests/server/CMakeFiles/tftpd.dir/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/util.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/util.c -o CMakeFiles/tftpd.dir/util.c.s

tests/server/CMakeFiles/tftpd.dir/util.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/util.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/util.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/util.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/util.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/util.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/util.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/util.c.obj


tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj: tests/server/CMakeFiles/tftpd.dir/flags.make
tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj: tests/server/CMakeFiles/tftpd.dir/includes_C.rsp
tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj: tests/server/tftpd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tftpd.dir/tftpd.c.obj   -c /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/tftpd.c

tests/server/CMakeFiles/tftpd.dir/tftpd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tftpd.dir/tftpd.c.i"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/tftpd.c > CMakeFiles/tftpd.dir/tftpd.c.i

tests/server/CMakeFiles/tftpd.dir/tftpd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tftpd.dir/tftpd.c.s"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && /usr/bin/i686-w64-mingw32-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/tftpd.c -o CMakeFiles/tftpd.dir/tftpd.c.s

tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj.requires:

.PHONY : tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj.requires

tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj.provides: tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj.requires
	$(MAKE) -f tests/server/CMakeFiles/tftpd.dir/build.make tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj.provides.build
.PHONY : tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj.provides

tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj.provides.build: tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj


# Object files for target tftpd
tftpd_OBJECTS = \
"CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj" \
"CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj" \
"CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj" \
"CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj" \
"CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj" \
"CMakeFiles/tftpd.dir/getpart.c.obj" \
"CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj" \
"CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj" \
"CMakeFiles/tftpd.dir/util.c.obj" \
"CMakeFiles/tftpd.dir/tftpd.c.obj"

# External object files for target tftpd
tftpd_EXTERNAL_OBJECTS =

tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/getpart.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/util.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/build.make
tests/server/tftpd.exe: /usr/i686-w64-mingw32/lib/libz.dll.a
tests/server/tftpd.exe: /usr/i686-w64-mingw32/lib/libssh2.dll.a
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/linklibs.rsp
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/objects1.rsp
tests/server/tftpd.exe: tests/server/CMakeFiles/tftpd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/william/work/socket-app/app/build/curl-7.52.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C executable tftpd.exe"
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tftpd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/server/CMakeFiles/tftpd.dir/build: tests/server/tftpd.exe

.PHONY : tests/server/CMakeFiles/tftpd.dir/build

tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/__/__/lib/mprintf.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/__/__/lib/nonblock.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/__/__/lib/strtoofft.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/__/__/lib/timeval.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/__/__/lib/warnless.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/getpart.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/__/__/lib/base64.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/__/__/lib/memdebug.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/util.c.obj.requires
tests/server/CMakeFiles/tftpd.dir/requires: tests/server/CMakeFiles/tftpd.dir/tftpd.c.obj.requires

.PHONY : tests/server/CMakeFiles/tftpd.dir/requires

tests/server/CMakeFiles/tftpd.dir/clean:
	cd /home/william/work/socket-app/app/build/curl-7.52.1/tests/server && $(CMAKE_COMMAND) -P CMakeFiles/tftpd.dir/cmake_clean.cmake
.PHONY : tests/server/CMakeFiles/tftpd.dir/clean

tests/server/CMakeFiles/tftpd.dir/depend:
	cd /home/william/work/socket-app/app/build/curl-7.52.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/william/work/socket-app/app/build/curl-7.52.1 /home/william/work/socket-app/app/build/curl-7.52.1/tests/server /home/william/work/socket-app/app/build/curl-7.52.1 /home/william/work/socket-app/app/build/curl-7.52.1/tests/server /home/william/work/socket-app/app/build/curl-7.52.1/tests/server/CMakeFiles/tftpd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/server/CMakeFiles/tftpd.dir/depend
