#include "mouse.h"

extern struct Debug debug;

static void Log(struct Mouse *mouse)
{
   if (debug.mouseLog) {
      printf("MOUSE: [%.2f, %.2f]\n", mouse->x, mouse->y);
   }
}

int MouseInitialize(struct Mouse *mouse)
{
   mouse->x = 0.0f;
   mouse->y = 0.0f;

   mouse->Log = Log;
}
