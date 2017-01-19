#ifndef MY_TEXT_H
#define MY_TEXT_H
#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <stdlib.h>

struct Character {
   unsigned char ch;
   GLuint TextureID;
   float Size[2];
   float Bearing[2];
   GLuint Advance;
};

struct Text {
   GLuint vao, vbo, program;
   void (*render)(struct Text *, float, float, const char*);
   void (*RENDER)(struct Text *, float, float, const char*, float scale);
   void (*destroy)();
   void (*printf)(struct Text*, float, float, float, const char*, ...);
   void (*renderBox)();
   float model[4][4];
   float view[4][4];
   float projection[4][4];
};

struct Text *TextCreate();
#endif
