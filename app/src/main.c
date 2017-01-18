#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include "components/window.h"
#include "components/shader.h"
#include "components/app.h"
#include "misc/functions.h"
//#include <curl/curl.h>

int downloadTexture(const char *url)
{
   printf("DOWNLOADING: %s\n", url);
}

int main(void)
{
   downloadTexture("https://learnopengl.com/img/textures/wall.jpg");
   //return MYSC_check_read_file();

   printf("START OF THE APPLICATION\n");
   GLFWwindow *window = WindowCreate();

   struct App *app = AppCreateNew();

  app->createProgram(app, "../src/shaders/app.vs", "../src/shaders/app.fs");

  app->setTexture(app, "../src/textures/wall.jpg");

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
