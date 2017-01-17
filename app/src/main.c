#include <GLFW/glfw3.h>
#include "components/window.h"
#include "components/shader.h"

int main(void)
{
   GLFWwindow *window = WindowCreate();

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
