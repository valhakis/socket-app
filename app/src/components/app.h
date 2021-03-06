#ifndef MY_APP_H
#define MY_APP_H

#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include "shader.h"
#include <SOIL.h>

struct App {
   int id;

   float *view;

   GLuint vao, vbo, program, texture;

   void (*draw)();
   void (*destroy)();
   void (*createProgram)();
   void (*setTexture)();
};
struct App *AppCreateNew();
#endif
