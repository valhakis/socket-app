#include "shader.h"

static GLchar *GetSource(const GLchar *path)
{
   char *source = NULL;
   FILE *fp = fopen(path, "r");
   if (fp == NULL) {
      printf("UNABLE TO READ FILE: '%s'\n", path);
      return NULL;
   } else  {
      /* Go to the end of the file. */
      if (fseek(fp, 0L, SEEK_END) == 0) {
         /* Get the size of the file. */
         long bufsize = ftell(fp);
         if (bufsize == -1) { /* Error */ }

         /* Allocate our buffer to that size. */
         source = malloc(sizeof(char) * (bufsize + 1));

         /* Go back to the start of the file. */
         if (fseek(fp, 0L, SEEK_SET) != 0) { /* Error */ }

         /* Read the entire file into memory. */
         size_t newLen = fread(source, sizeof(char), bufsize, fp);
         if ( ferror( fp ) != 0 ) {
            fputs("Error reading file", stderr);
         } else {
            source[newLen++] = '\0'; /* Just to be safe. */
         }
      }
      fclose(fp);
   }

   return source;
   //free(source); /* Don't forget to call free() later! */
}

GLuint NewShader(const GLchar *vpath, const GLchar *fpath)
{
   GLchar *vertexShaderSource = GetSource(vpath);
   GLchar *fragmentShaderSource = GetSource(fpath);

   if (vertexShaderSource == NULL || fragmentShaderSource == NULL) {
      printf("VERTEX SHADER || FRAGMENT SHADER ->  NOT OK!\n");
      return 0;
   } 

   // Build and compile our shader program
   // Vertex shader
   GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
   glShaderSource(vertexShader, 1, (const char **)&vertexShaderSource, NULL);
   glCompileShader(vertexShader);
   // Check for compile time errors
   GLint success;
   GLchar infoLog[512];
   glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
   if (!success)
   {
      glGetShaderInfoLog(vertexShader, 512, NULL, infoLog);
      printf("ERROR::SHADER::VERTEX::COMPILATION_FAILED\n%s\n", infoLog);
   }
   // Fragment shader
   GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
   glShaderSource(fragmentShader, 1, (const char **)&fragmentShaderSource, NULL);
   glCompileShader(fragmentShader);
   // Check for compile time errors
   glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
   if (!success)
   {
      glGetShaderInfoLog(fragmentShader, 512, NULL, infoLog);
      printf("ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n%s\n", infoLog);
   }
   // Link shaders
   GLuint shaderProgram = glCreateProgram();
   glAttachShader(shaderProgram, vertexShader);
   glAttachShader(shaderProgram, fragmentShader);
   glLinkProgram(shaderProgram);
   // Check for linking errors
   glGetProgramiv(shaderProgram, GL_LINK_STATUS, &success);
   if (!success) {
      glGetProgramInfoLog(shaderProgram, 512, NULL, infoLog);
      printf("ERROR::SHADER::PROGRAM::LINKING_FAILED\n%s\n", infoLog);
   }
   glDeleteShader(vertexShader);
   glDeleteShader(fragmentShader);

   return shaderProgram;
}
