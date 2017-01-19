all: c cpp

c: src/main.c
	gcc -o bin/capp src/main.c

cpp: src/main.cpp
	g++ -o bin/cppapp src/main.cpp `pkg-config --libs --cflags glm`

run:
	./bin/capp && ./bin/cppapp
