cc = i686-w64-mingw32-gcc

libs = `i686-w64-mingw32-pkg-config --libs glfw3 glew` -lopengl32 -lgdi32 -lglu32 -lglew32
cflags = `i686-w64-mingw32-pkg-config --cflags glfw3 glew`
ldflags = 

sources = $(wildcard src/*.c src/**/*.c)
objects = $(patsubst src/%.c, obj/%.o, $(sources))

all: $(objects)
	$(cc) $(cflags) $(ldflags) $(objects) $(libs) -o bin/app.exe

obj/%.o: src/%.c
	$(cc) $(cflgas) -c $< -o $@  `pkg-config --libs --cflags glfw3`

clean:
	rm -f obj/**/*.o

# user32 kernel32 glu32 glfw3dll
