#include "app.h"

static void setTexture(struct App *self, const char *path)
{
   float textureCoordinates[] = {
      0.0f, 0.0f,  // Lower-left corner  
      1.0f, 0.0f,  // Lower-right corner
      0.5f, 1.0f   // Top-center corner
   };

   //glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_MIRRORED_REPEAT);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	//int width, height;
	//unsigned char* image = SOIL_load_image("container.jpg", &width, &height, 0, SOIL_LOAD_RGB); 

	//GLuint texture;
	//glGenTextures(1, &texture); 

	//glBindTexture(GL_TEXTURE_2D, texture);

	//glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image);
	//glGenerateMipmap(GL_TEXTURE_2D);
}

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

static void createProgram(struct App *self, const char *vpath, const char *fpath) {
	glDeleteProgram(self->program);
	self->program = NewShader(vpath, fpath);
}

struct App *AppCreateNew() {
	struct App *app = malloc(sizeof(struct App));

	// configure app
	app->id = 1;

	// create program
	app->program = NewShader("../src/shaders/default.vs", "../src/shaders/default.fs");

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
	app->createProgram = createProgram;
	app->setTexture = setTexture;

	return app;
}

