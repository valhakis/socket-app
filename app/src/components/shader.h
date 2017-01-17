#ifndef MY_SHADER_H
#define MY_SHADER_H

#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <stdlib.h>

GLuint NewShader(const GLchar *vpath, const GLchar *fpath);

#endif
