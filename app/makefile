cc = i686-w64-mingw32-gcc

libs = `i686-w64-mingw32-pkg-config --libs glfw3` -lgdi32 -lglu32 -lglew32 -lopengl32 -lglew32.dll -lSOIL
cflags = `i686-w64-mingw32-pkg-config --cflags glfw3` \
			-L ./libraries/soil/lib -I ./libraries/lib/include \
			-static
ldflags = 

sources = $(wildcard src/*.c src/**/*.c)
objects = $(patsubst src/%.c, obj/%.o, $(sources))

all: app copy

app: $(objects)
	$(cc) $(cflags) $(ldflags) $(objects) $(libs) -o bin/app.exe

obj/%.o: src/%.c
	$(cc) $(cflgas) -c $< -o $@ 

clean:
	rm -f obj/**/*.o

copy:
	cp /usr/i686-w64-mingw32/bin/{glew32.dll,glfw3.dll} bin/

run:
	curl kodu.noip.me:3000/restart

# user32 kernel32 glu32 glfw3dll

