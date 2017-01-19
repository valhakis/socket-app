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
#include "misc/common.h"

// mat4x4 model, view, proj;
// mat4x4_identity(model);

static void DownloadTextures();

struct Common *common;

struct Debug debug = {
   1, // mouse log
};

struct Mouse mouse;

unsigned int WIDTH = 800, HEIGHT = 600;

int main(int arg, char *argv[])
{
   common = CommonInitialize();
   DownloadTextures();

   MouseInitialize(&mouse);

   printf("START OF THE APPLICATION\n");
   GLFWwindow *window = WindowCreate();

   /* put your initialization functions here */
   struct App *app = AppCreateNew();
   struct Text *txt = TextCreate();

   /* Loop until the user closes the window */
   while (!glfwWindowShouldClose(window))
   {
      WindowUpdate(window, 0.13f, 0.13f, 0.13f, 1.0f, GL_COLOR_BUFFER_BIT);
      /* put your rendering functions here */
      app->draw(app);
      txt->render(txt, 50, 50, "Text is Awesome");
      txt->RENDER(txt, 100, 100, "This is a test", 0.5f);
      txt->printf(txt, 250, 250, 1.3f, "%s %s", "string 1", "string 2");
      txt->printf(txt, mouse.x, mouse.y, 0.5f, "%.2f %.2f", mouse.x, mouse.y);
      txt->renderBox();
   }

   /* put your destroy functions here */
   app->destroy(app);
   txt->destroy(txt);

   WindowTerminate();
   return 0;
}


static void DownloadTextures()
{
   common->DownloadTexture("http://telias.free.fr/textures_tex/wood/wood2.jpg");
   common->DownloadTextureAs("http://telias.free.fr/textures_tex/wood/wood2.jpg", "wood");
   //common->DownloadFontAs("example", "example");
}
