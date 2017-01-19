cc = i686-w64-mingw32-gcc
all: main.c
	$(cc) -o app.exe $^ -static `/home/william/work/socket-app/app/libraries/curl/bin/curl-config --static-libs --cflags` 

