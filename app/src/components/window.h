#ifndef MY_WINDOW_H
#define MY_WINDOW_H
GLFWwindow* WindowCreate();
void WindowUpdate(GLFWwindow* window, float r, float g, float b, float a, GLbitfield mask);
void WindowTerminate();
#endif
