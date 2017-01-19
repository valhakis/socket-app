#include "app.h"
#include "../includes/share.h"

extern unsigned int WIDTH, HEIGHT;

static void setTexture(struct App *self, const char *file)
{
   //glGenTextures(1, &self->texture);
   glBindTexture(GL_TEXTURE_2D, self->texture);

   // Set our texture parameters
   //glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);	// Set texture wrapping to GL_REPEAT
   //glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

   // Set texture filtering
   //glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
   //glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

   // Load, create texture and generate mipmaps
   //const char *file = "../src/textures/wall.jpg";
   FILE *fp = fopen(file, "r");
   if (fp == NULL) {
      printf("UNABLE TO OPEN TEXTURE FILE '%s'\n", file);
   }
   int width, height;
   unsigned char* image = SOIL_load_image(file, &width, &height, 0, SOIL_LOAD_RGB);
   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image);
   glGenerateMipmap(GL_TEXTURE_2D);
   SOIL_free_image_data(image);
   glBindTexture(GL_TEXTURE_2D, 0);
}

static void draw(struct App *self) {
   glUseProgram(self->program);

   glBindTexture(GL_TEXTURE_2D, self->texture);

   GLuint viewLoc = glGetUniformLocation(self->program, "model");
   glUniformMatrix4fv(viewLoc, 1, GL_FALSE, self->view);

   glBindVertexArray(self->vao);
   glDrawArrays(GL_TRIANGLES, 0, 3);
   glBindVertexArray(0);

   glUseProgram(0);
}

static void destroy(struct App *self) {
   glDeleteVertexArrays(1, &self->vao);
   glDeleteBuffers(1, &self->vbo);
   printf("APP HAS BEEN DESTROYED\n");
}

static void createProgram(struct App *self, const char *vpath, const char *fpath) {
   glDeleteProgram(self->program);
   self->program = NewShader(vpath, fpath);
}

struct App *AppCreateNew() {
   struct App *app = malloc(sizeof(struct App));

   // configure app
   app->id = 1;

   // create program
   app->program = NewShader("../src/shaders/app.vs", "../src/shaders/app.fs");

   float vertices[] = {
      // POS               // COORD
      -0.5f, -0.5f, 0.0f,  0.0f, 0.0f,
      0.5f, -0.5f, 0.0f,   1.0f, 0.0f,
      0.0f,  0.5f, 0.0f,   0.5f, 1.0f
   };

   // CREATE VAO
   // =============================================================

   // generate arrays and buffers
   glGenVertexArrays(1, &app->vao);
   glGenBuffers(1, &app->vbo);

   // setup VAO
   glBindVertexArray(app->vao);

   // setup VBO
   glBindBuffer(GL_ARRAY_BUFFER, app->vbo);
   glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

   // position attribute
   glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (GLvoid*)0);
   glEnableVertexAttribArray(0);

   // texture attribute
   glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (GLvoid*)(3 * sizeof(GLfloat)));
   glEnableVertexAttribArray(1);

   glBindBuffer(GL_ARRAY_BUFFER, 0); 
   glBindVertexArray(0); 

   // CREATE TEXTURE
   // =============================================================
   glGenTextures(1, &app->texture);
   glBindTexture(GL_TEXTURE_2D, app->texture);

   // Set our texture parameters
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);	// Set texture wrapping to GL_REPEAT
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

   // Set texture filtering
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

   // Load, create texture and generate mipmaps
   const char *file = "../src/textures/wood.jpg";
   FILE *fp = fopen(file, "r");
   if (fp == NULL) {
      printf("UNABLE TO OPEN TEXTURE FILE '%s'\n", file);
   }
   int width, height;
   unsigned char* image = SOIL_load_image(file, &width, &height, 0, SOIL_LOAD_RGB);
   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image);
   glGenerateMipmap(GL_TEXTURE_2D);
   SOIL_free_image_data(image);
   glBindTexture(GL_TEXTURE_2D, 0);

   // setup function pointers
   app->draw = draw;
   app->destroy = destroy;
   app->createProgram = createProgram;
   app->setTexture = setTexture;

   app->view = malloc(sizeof(float) * 4 * 4);

   identity(app->view);
   //ortho(app->view, 0.0f, WIDTH, 0.0f, HEIGHT, 0.1f, 100.0f);

   return app;
}

