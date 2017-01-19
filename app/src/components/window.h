#ifndef MY_WINDOW_H
#define MY_WINDOW_H

#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include <stdio.h>
#include "mouse.h"

GLFWwindow* WindowCreate();
void WindowUpdate(GLFWwindow* window, float r, float g, float b, float a, GLbitfield mask);
void WindowTerminate();

#endif
