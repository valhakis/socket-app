#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include "components/window.h"
#include "components/shader.h"
#include "misc/functions.h"

int MYSC_check_read_file()
{
   system("ls -la app/src/shaders");

   const char *path = "app/src/shaders/default.vs";
   FILE *fp = fopen(path, "r");
   if (fp == NULL) {
      printf("UNABLE TO READ '%s'\n", path);
      return 1;
   } 

   char buffer[512];

   fgets(buffer, 512, fp);
   printf("%s", buffer);

   fclose(fp);
   return 0;
   int status = system("echo WORKDIR: '%cd%'");
   system("ls -la app/src/shaders");
}

int main(void)
{
   //return MYSC_check_read_file();

   printf("START OF THE APPLICATION\n");
   GLFWwindow *window = WindowCreate();

   GLuint program = NewShader("app/src/shaders/default.vs", "app/src/shaders/default.fs");

   /* Loop until the user closes the window */
   while (!glfwWindowShouldClose(window))
   {
      /* Render here */
      glClear(GL_COLOR_BUFFER_BIT);

      /* Swap front and back buffers */
      glfwSwapBuffers(window);

      /* Poll for and process events */
      glfwPollEvents();
   }

   glfwTerminate();
   return 0;
}
