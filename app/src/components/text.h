#ifndef MY_TEXT_H
#define MY_TEXT_H
#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <stdlib.h>

struct Character {
   GLuint TextureID;
   float size[2];
   float Bearing[2];
   GLuint Advance;
};

struct Text {
   GLuint vao, vbo, program;
   void (*render)(struct Text *, float, float, const char*);
   void (*destroy)();
};

struct Text *TextCreate();
#endif
