#include "text.h"
#include "shader.h"
#include <stdio.h>
#include <stdlib.h>
#include <ft2build.h>
#include FT_FREETYPE_H  
#include "../includes/share.h"
#include <stdarg.h>

extern unsigned int WIDTH, HEIGHT;

static FT_Library ft;
static FT_Face face;
static FT_GlyphSlot g;

static struct Character Characters[128];

static GLuint BoxVao, BoxVbo, BoxProgram;
struct Character BoxCharacter;

static void out(float *matrix) {

   float *p = NULL;
   for (int i=0; i<4; i++) {
      for (int j=0; j<4; j++) {
         if (matrix[j + i * 4] >= 0) {
            printf(" ");
         }
         printf("%0.2f ", matrix[j + i * 4]);
      }
      printf("\n");
   }
   printf("=====================================\n");
}

static void InitBox()
{
   // 1. setup character
   FT_Set_Pixel_Sizes(face, 0, 48);
   glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
   FT_Load_Char(face, 'R', FT_LOAD_RENDER);

   // 2. setup character texture
   glGenTextures(1, &BoxCharacter.TextureID);
   glBindTexture(GL_TEXTURE_2D, BoxCharacter.TextureID);
   glTexImage2D(
         GL_TEXTURE_2D,
         0,
         GL_RED,
         face->glyph->bitmap.width,
         face->glyph->bitmap.rows,
         0,
         GL_RED,
         GL_UNSIGNED_BYTE,
         face->glyph->bitmap.buffer
         );
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
   BoxCharacter.Size[0] = face->glyph->bitmap.width;
   BoxCharacter.Size[1] = face->glyph->bitmap.rows;

   BoxCharacter.Bearing[0] = face->glyph->bitmap_left;
   BoxCharacter.Bearing[1] = face->glyph->bitmap_top;
   BoxCharacter.Advance = face->glyph->advance.x;
   glBindTexture(GL_TEXTURE_2D, 0);

   // 3. set up vertex array object
   float vertices[] = {
      // POS               // COORD
      -0.5f, 0.5f,     0.0f, 0.0f, // top left
      -0.5f, -0.5f,      0.0f, 1.0f, // bottom left
      0.5f,  -0.5f,       1.0f, 1.0f, // bottom right
      // POS               // COORD 
      -0.5f, 0.5f,     0.0f, 0.0f, // top left
      0.5f, -0.5f,      1.0f, 1.0f, // bottom right
      0.5f,  0.5f,       1.0f, 0.0f // top right
   };

   BoxProgram = NewShader("../src/shaders/text.vs", "../src/shaders/text.fs");

   glGenVertexArrays(1, &BoxVao);
   glGenBuffers(1, &BoxVbo);

   glBindVertexArray(BoxVao);

   glBindBuffer(GL_ARRAY_BUFFER, BoxVbo);
   glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_DYNAMIC_DRAW);

   glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(GLfloat), (GLvoid*)0);
   glEnableVertexAttribArray(0);

   glBindBuffer(GL_ARRAY_BUFFER, 0);
   glBindVertexArray(0);    

   glUniform3f(glGetUniformLocation(BoxProgram, "textColor"), 1.0f, 0.0f, 0.0f);

}

static void renderBox()
{
   glUseProgram(BoxProgram);

   float projection[] = {
      1, 0, 0, 0,
      0, 1, 0, 0,
      0, 0, 1, 0,
      0, 0, 0, 1,
   };
   ortho(projection, 0.0f, WIDTH, 0.0f, HEIGHT, -1.0f, 1.0f);

   //out((float *)projection);
   glUniformMatrix4fv(glGetUniformLocation(BoxProgram, "projection"), 1, GL_FALSE, projection);

   glEnable(GL_CULL_FACE);
   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

   glActiveTexture(GL_TEXTURE0);
   glBindVertexArray(BoxVao);

      /*
   float vertices[] = {
      // POS               // COORD
      -0.5f, 0.5f,     0.0f, 0.0f, // top left
      -0.5f, -0.5f,      0.0f, 1.0f, // bottom left
      0.5f,  -0.5f,       1.0f, 1.0f, // bottom right
      // POS               // COORD 
      -0.5f, 0.5f,     0.0f, 0.0f, // top left
      0.5f, -0.5f,      1.0f, 1.0f, // bottom right
      0.5f,  0.5f,       1.0f, 0.0f // top right
   };
   */
   float vertices[] = {
      // POS               // COORD
      10.0f, 100.0f,     0.0f, 0.0f, // top left
      10.0f, 10.0f,      0.0f, 1.0f, // bottom left
      100.0f,  10.0f,       1.0f, 1.0f, // bottom right
      // POS               // COORD 
      10.0f, 100.0f,     0.0f, 0.0f, // top left
      100.0f, 10.0f,      1.0f, 1.0f, // bottom right
      100.0f,  100.0f,       1.0f, 0.0f // top right
   };
   glBindTexture(GL_TEXTURE_2D, BoxCharacter.TextureID);

   glBindBuffer(GL_ARRAY_BUFFER, BoxVbo);
   glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(vertices), vertices);
   glBindBuffer(GL_ARRAY_BUFFER, 0);

   glBindTexture(GL_TEXTURE_2D, BoxCharacter.TextureID);
   glDrawArrays(GL_TRIANGLES, 0, 6);

   glBindVertexArray(0);
   glBindTexture(GL_TEXTURE_2D, 0);

   glUseProgram(0);
}

// 1. example
static void ExampleEnableRequired()
{
   glEnable(GL_CULL_FACE);
   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}

// 2. example
static void ExampleUpdateMatrixes(struct Text *self)
{
   glUniformMatrix4fv(glGetUniformLocation(self->program, "projection"), 1, GL_FALSE, (float *)self->projection);
}

// 3. example
static void ExampleUpdateUniforms(struct Text *self)
{
   float color[4] = { 1.0f, 0.0f, 0.0f, 1.0f };
   glUniform3f(glGetUniformLocation(self->program, "textColor"), color[0], color[1], color[2]);
}

static void RENDER(struct Text *self, float x, float y, const char *text, float scale) 
{
   ExampleEnableRequired();

   // Activate corresponding render state	
   glUseProgram(self->program);

   ExampleUpdateMatrixes(self);
   ExampleUpdateUniforms(self);
   glActiveTexture(GL_TEXTURE0);
   glBindVertexArray(self->vao);

   for (char *it = (char *)text; *it; ++it)
   {
      struct Character ch = Characters[*it];
      GLfloat xpos = x + ch.Bearing[0] * scale;
      GLfloat ypos = y - (ch.Size[1] - ch.Bearing[1]) * scale;
      GLfloat w = ch.Size[0] * scale;
      GLfloat h = ch.Size[1] * scale;
      // Update VBO for each character
      GLfloat vertices[6][4] = {
         { xpos,     ypos + h,   0.0, 0.0 },            
         { xpos,     ypos,       0.0, 1.0 },
         { xpos + w, ypos,       1.0, 1.0 },

         { xpos,     ypos + h,   0.0, 0.0 },
         { xpos + w, ypos,       1.0, 1.0 },
         { xpos + w, ypos + h,   1.0, 0.0 }           
      };
      // Render glyph texture over quad
      glBindTexture(GL_TEXTURE_2D, ch.TextureID);
      // Update content of VBO memory
      glBindBuffer(GL_ARRAY_BUFFER, self->vbo);
      glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(vertices), vertices); 
      glBindBuffer(GL_ARRAY_BUFFER, 0);
      // Render quad
      glDrawArrays(GL_TRIANGLES, 0, 6);
      // Now advance cursors for next glyph (note that advance is number of 1/64 pixels)
      x += (ch.Advance >> 6) * scale; // Bitshift by 6 to get value in pixels (2^6 = 64)
   }
   glBindVertexArray(0);
   glBindTexture(GL_TEXTURE_2D, 0);
   glUseProgram(0);
}

static void TextPrintf(
      struct Text *self, 
      float x, 
      float y, 
      float scale,
      const char *format, 
      ...)
{

   char buffer[1024];
   va_list args;
   va_start(args, format);
   vsprintf(buffer, format, args);
   va_end(args);

   printf("BUFFER: %s\n", buffer);

   RENDER(self, x, y, buffer, scale);
}



static void render(struct Text *self, float x, float y, const char *text) 
{
   glEnable(GL_CULL_FACE);
   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

   float scale = 1.0f;
   float color[4] = { 1.0f, 0.0f, 0.0f, 1.0f };

   // Activate corresponding render state	
   glUseProgram(self->program);
   glUniformMatrix4fv(glGetUniformLocation(self->program, "projection"), 1, GL_FALSE, (float *)self->projection);
   glUniform3f(glGetUniformLocation(self->program, "textColor"), color[0], color[1], color[2]);
   glActiveTexture(GL_TEXTURE0);
   glBindVertexArray(self->vao);

   for (char *it = (char *)text; *it; ++it)
   {
      struct Character ch;
      for (unsigned int i=0; i<128; i++) {
         if (Characters[i].ch == *it) {
            ch = Characters[i];
            break;
         }
      }
      GLfloat xpos = x + ch.Bearing[0] * scale;
      GLfloat ypos = y - (ch.Size[1] - ch.Bearing[1]) * scale;
      GLfloat w = ch.Size[0] * scale;
      GLfloat h = ch.Size[1] * scale;
      // Update VBO for each character
      GLfloat vertices[6][4] = {
         { xpos,     ypos + h,   0.0, 0.0 },            
         { xpos,     ypos,       0.0, 1.0 },
         { xpos + w, ypos,       1.0, 1.0 },

         { xpos,     ypos + h,   0.0, 0.0 },
         { xpos + w, ypos,       1.0, 1.0 },
         { xpos + w, ypos + h,   1.0, 0.0 }           
      };
      // Render glyph texture over quad
      glBindTexture(GL_TEXTURE_2D, ch.TextureID);
      // Update content of VBO memory
      glBindBuffer(GL_ARRAY_BUFFER, self->vbo);
      glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(vertices), vertices); 
      glBindBuffer(GL_ARRAY_BUFFER, 0);
      // Render quad
      glDrawArrays(GL_TRIANGLES, 0, 6);
      // Now advance cursors for next glyph (note that advance is number of 1/64 pixels)
      x += (ch.Advance >> 6) * scale; // Bitshift by 6 to get value in pixels (2^6 = 64)
   }
   glBindVertexArray(0);
   glBindTexture(GL_TEXTURE_2D, 0);
   glUseProgram(0);
}

static void destroy() 
{

}

static void InitializeFreeType(struct Text *self)
{
   // 1. initialize freetype library 
   if(FT_Init_FreeType(&ft)) {
      fprintf(stderr, "Could not init freetype library\n");
      exit(1);
   }

   // 2. create new font face 
   const char *font_path = "../src/fonts";
   const char *fontname = "OpenSans-Regular.ttf";
   char fontfile[FILENAME_MAX];
   sprintf(fontfile, "%s/%s", font_path, fontname);

   if(FT_New_Face(ft, fontfile, 0, &face)) {
      fprintf(stderr, "COULD NOT OPEN FONTFILE '%s'\n", fontfile);
      exit(1);
   }

   // 3. set ont size to 48px 
   //FT_Set_Pixel_Sizes(face, 0, 48);
   FT_Set_Pixel_Sizes(face, 0, 48);

   // 4. create glyph slot 
   g = face->glyph;
}

static void LoadCharacters()
{
   FT_Set_Pixel_Sizes(face, 0, 48);
   glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
   unsigned int i = 0;
   for (GLubyte c=0; c<128; c++, i++)
   {
      // Load character glyph
      if (FT_Load_Char(face, c, FT_LOAD_RENDER)) {
         printf("ERROR::TEXT: Load glyph '%c'\n", c);
      } else {
         //printf("SUCCESS:TEXT:LOAD:GLYPH '%c'\n", c);
      }

      // Generate texture
      GLuint texture;
      glGenTextures(1, &texture);
      glBindTexture(GL_TEXTURE_2D, texture);
      glTexImage2D(
            GL_TEXTURE_2D,
            0,
            GL_RED,
            face->glyph->bitmap.width,
            face->glyph->bitmap.rows,
            0,
            GL_RED,
            GL_UNSIGNED_BYTE,
            face->glyph->bitmap.buffer
            );
      // Set texture options
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
      // Now store character for later use
      struct Character character = {
         c,
         texture, 
         {face->glyph->bitmap.width, face->glyph->bitmap.rows},
         {face->glyph->bitmap_left, face->glyph->bitmap_top},
         face->glyph->advance.x
      };
      Characters[i] = character;
   }
}

void CreateVao(struct Text *self)
{
   glGenVertexArrays(1, &self->vao);
   glGenBuffers(1, &self->vbo);
   glBindVertexArray(self->vao);
   glBindBuffer(GL_ARRAY_BUFFER, self->vbo);
   glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * 6 * 4, NULL, GL_DYNAMIC_DRAW);
   glEnableVertexAttribArray(0);
   glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(GLfloat), 0);
   glBindBuffer(GL_ARRAY_BUFFER, 0);
   glBindVertexArray(0);    
}

struct Text *TextCreate()
{
   /* allocate memory to pointer */
   struct Text *txt = malloc(sizeof(struct Text));

   InitializeFreeType(txt);
   LoadCharacters();
   CreateVao(txt);

   InitBox();

   /* setup structure vairables */
   txt->program = NewShader("../src/shaders/text.vs", "../src/shaders/text.fs");

   //txt->model = malloc(sizeof(float) * 4 * 4);
   //txt->view = malloc(sizeof(float) * 4 * 4);
   //txt->projection = malloc(sizeof(float) * 4 * 4);

   identity((float *)txt->model);
   identity((float *)txt->view);
   identity((float *)txt->projection);

   ortho((float*)txt->projection, 0.0f, WIDTH, 0.0f, HEIGHT, -1.0f, 1.0f);

   /* setup function pointers */
   txt->render = render;
   txt->RENDER = RENDER;
   txt->destroy = destroy;
   txt->renderBox = renderBox;
   txt->printf = TextPrintf;

   return txt;
}

