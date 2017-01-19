#ifndef MY_MOUSE_H
#define MY_MOUSE_H

#include "debug.h"
#include <stdio.h>

struct Mouse {
   float x;
   float y;
   void (*Log)();
};

int MouseInitialize(struct Mouse *mouse);

#endif
