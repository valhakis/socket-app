#include <stdio.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

void out(float *matrix) {

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
   printf("================================\n");
}

int main()
{
   printf("CPP APP\n");

   glm::mat4 matrix = glm::perspective(45.0f, (float)800 / (float)600, 0.1f, 100.0f);
   out(glm::value_ptr(matrix));

   printf("\n");
   return 0;
}
