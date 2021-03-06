#include "window.h"

static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode);
static void cursor_position_callback(GLFWwindow* window, double xpos, double ypos);

extern struct Mouse mouse;
extern unsigned int WIDTH, HEIGHT;

GLFWwindow* WindowCreate()
{
   GLFWwindow* window;

   /* Initialize the library */
   if (!glfwInit())
      return NULL;

   /* Configure library */
   glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
   glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
   glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
   glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);

   /* Create a windowed mode window and its OpenGL context */
   window = glfwCreateWindow(WIDTH, HEIGHT, "Hello World", NULL, NULL);
   if (!window)
   {
      glfwTerminate();
      return NULL;
   }

   /* Set window callbacks */
   glfwSetKeyCallback(window, key_callback);  
   glfwSetCursorPosCallback(window, cursor_position_callback);  

   /* Make the window's context current */
   glfwMakeContextCurrent(window);

   /* initialize glew and moden something */
   glewExperimental = GL_TRUE;

   glewInit();

   /* Define the viewport dimensions */
   int width, height;
   glfwGetFramebufferSize(window, &width, &height);  
   glViewport(0, 0, width, height);

   return window;
}

static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode)
{
   // When a user presses the escape key, we set the WindowShouldClose property to true, 
   // closing the application
   if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
      glfwSetWindowShouldClose(window, GL_TRUE);
}  

void WindowUpdate(GLFWwindow* window, float r, float g, float b, float a, GLbitfield mask)
{
   /* Swap front and back buffers */
   glfwSwapBuffers(window);

   /* Poll for and process events */
   glfwPollEvents();

   glClearColor(r, g, b, a);

   /* Render here */
   glClear(mask);
}

void WindowTerminate()
{
   glfwTerminate();
}

static void cursor_position_callback(GLFWwindow* window, double xpos, double ypos)
{
   mouse.x = xpos;
   mouse.y = -(ypos - HEIGHT);

   mouse.Log(&mouse);
}
