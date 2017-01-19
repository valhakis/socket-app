out = ../../bin

name = mysql-app.exe

cc = i686-w64-mingw32-gcc

# libs = -lmysqlclient -lpthread -lz -lm -lssl -lcrypto
libs = -lmysqlclient \
		 # -lwsock32 \
		 # -lssl \
		 # -lpthread \
		 # -lz \
		 # -lm \
		 # -lcrypto \


cflags = \
			-I /usr/i686-w64-mingw32/include/mysql/ \
			-L /usr/i686-w64-mingw32/lib/

ldflags = 

sources = $(wildcard src/*.c src/**/*.c)
objects = $(patsubst src/%.c, obj/%.o, $(sources))

all: app copy
	ls $(out)

app: $(objects)
	$(cc) $(cflags) $(ldflags) $(objects) $(libs) -o $(out)/$(name)

obj/%.o: src/%.c
	$(cc) $(cflags) -c $< -o $@ 

clean:
	rm -f obj/**/*.o

copy:
	cp /usr/i686-w64-mingw32/bin/{glew32.dll,glfw3.dll,libmariadb.dll} bin/

run:
	curl kodu.noip.me:3000/mysql-app/start

run-local:
	wine $(out)/$(name)

# user32 kernel32 glu32 glfw3dll


