#include <GL/glew.h>
#define GLEW_STATIC
#include <GLFW/glfw3.h>
#include "components/window.h"
#include "components/shader.h"
#include "components/app.h"
#include "components/text.h"
#include "components/mouse.h"
#include "components/debug.h"
#include "misc/functions.h"
#include "includes/share.h"

// mat4x4 model, view, proj;
// mat4x4_identity(model);

struct Debug debug = {
   1, // mouse log
};

struct Mouse mouse;

unsigned int WIDTH = 800, HEIGHT = 600;

int main(void)
{
   MouseInitialize(&mouse);
   //return MYSC_check_read_file();

   printf("START OF THE APPLICATION\n");
   GLFWwindow *window = WindowCreate();

   struct App *app = AppCreateNew();
   struct Text *txt = TextCreate();

   //app->createProgram(app, "../src/shaders/app.vs", "../src/shaders/app.fs");

   app->setTexture(app, "../src/textures/wall.jpg");

   /* Loop until the user closes the window */
   while (!glfwWindowShouldClose(window))
   {
      WindowUpdate(window, 0.03f, 0.03f, 0.03f, 1.0f, GL_COLOR_BUFFER_BIT);

      txt->render(txt, 50, 50, "Text is Awesome");
      app->draw(app);
   }

   app->destroy(app);
   txt->destroy(txt);

   WindowTerminate();
   return 0;
}
