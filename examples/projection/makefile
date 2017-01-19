all: c cpp

c: src/main.c
	gcc -I ../../app/libraries/other/include/ \
		-o bin/capp src/main.c -lm

cpp: src/main.cpp
	g++ -o bin/cppapp src/main.cpp `pkg-config --libs --cflags glm` -lm

run:
	./bin/capp && ./bin/cppapp
