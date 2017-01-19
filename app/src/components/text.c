#include "text.h"
#include <stdio.h>
#include <stdlib.h>
#include <ft2build.h>
#include FT_FREETYPE_H  

struct Character Characters;

static void render(struct Text *self, float x, float y, const char *text) 
{
   glUseProgram(self->program);
   glUseProgram(0);

   glUniform3f(glGetUniformLocation(self->program, "textColor"), 1.0f, 0.0f, 0.0f);
   glActiveTexture(GL_TEXTURE0);
   glBindVertexArray(self->vao);
}

static void destroy() 
{

}


struct Text *TextCreate()
{
   /* allocate memory to pointer */
   struct Text *txt = malloc(sizeof(struct Text));

   /* 1. initialize freetype library */
   FT_Library ft;

   if(FT_Init_FreeType(&ft)) {
      fprintf(stderr, "Could not init freetype library\n");
      exit(1);
   }

   /* 2. create new font face */
   //FT_Face face;

   //if(FT_New_Face(ft, "FreeSans.ttf", 0, &face)) {
   //fprintf(stderr, "Could not open font\n");
   //return 1;
   //}

   /* 3. set ont size to 48px */
   //FT_Set_Pixel_Sizes(face, 0, 48);

   /* 4. create glyph slot */
   //FT_GlyphSlot g = face->glyph;

   /* setup function pointers */
   txt->render = render;
   txt->destroy = destroy;

   return txt;
}

