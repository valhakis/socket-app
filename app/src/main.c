#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include "components/window.h"
#include "components/shader.h"
#include "components/app.h"
#include "misc/functions.h"

int main(void)
{
   //return MYSC_check_read_file();

   printf("START OF THE APPLICATION\n");
   GLFWwindow *window = WindowCreate();

   struct App *app = AppInit();

   /* Loop until the user closes the window */
   while (!glfwWindowShouldClose(window))
   {
      WindowUpdate(window, 0.03, 0.03, 0.03, 1.0, GL_COLOR_BUFFER_BIT);

      app->draw(app);
   }

   app->destroy(app);

   WindowTerminate();
   return 0;
}
