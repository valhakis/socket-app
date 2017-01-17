#include "app.h"

static void draw(struct App *self) {
   glUseProgram(self->program);

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

struct App *AppInit() {
   struct App *app = malloc(sizeof(struct App));

   // configure app
   app->id = 1;

   // create program
   app->program = NewShader("app/src/shaders/default.vs", "app/src/shaders/default.fs");
   
   float vertices[] = {
      -0.5f, -0.5f, 0.0f, // Left  
      0.5f, -0.5f, 0.0f, // Right 
      0.0f,  0.5f, 0.0f  // Top 
   };

   // generate arrays and buffers
   glGenVertexArrays(1, &app->vao);
   glGenBuffers(1, &app->vbo);

   // setup VAO
   glBindVertexArray(app->vao);

   // setup VBO
   glBindBuffer(GL_ARRAY_BUFFER, app->vbo);
   glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

   glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), (GLvoid*)0);
   glEnableVertexAttribArray(0);

   glBindBuffer(GL_ARRAY_BUFFER, 0); 
   glBindVertexArray(0); 

   // setup function pointers
   app->draw = draw;
   app->destroy = destroy;

   return app;
}

