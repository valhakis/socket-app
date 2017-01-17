#include "functions.h"

int MYSC_check_read_file()
{
   system("ls -la app/src/shaders");

   const char *path = "app/src/shaders/default.vs";
   FILE *fp = fopen(path, "r");
   if (fp == NULL) {
      printf("UNABLE TO READ '%s'\n", path);
      return 1;
   } 

   char buffer[512];

   fgets(buffer, 512, fp);
   printf("%s", buffer);

   fclose(fp);
   return 0;
   int status = system("echo WORKDIR: '%cd%'");
   system("ls -la app/src/shaders");
}

