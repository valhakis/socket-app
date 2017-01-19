#include <stdio.h>

// [0][0] [0][1] [0][2] [0][3]
// [1][0] [1][1] [1][2] [1][3]
// [2][0] [2][1] [2][2] [2][3]
// [3][0] [3][1] [3][2] [3][3]

// 1, 0, 0, 0,

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
}

void ortho(float *matrix, float left, float right, float bot, float top, float near, float far) {

   matrix[0] = 2 / (top - 1);
   matrix[1] = 0;
   matrix[2] = 0;
   matrix[3] = 0;

   matrix[0 + 1 * 4] = 0;
   matrix[1 + 1 * 4] = 2 / (right - left);
   matrix[2 + 1 * 4] = 0;
   matrix[3 + 1 * 4] = 0;

   matrix[0 + 2 * 4] = 0;
   matrix[1 + 2 * 4] = 0;
   matrix[2 + 2 * 4] = -2 / (far - near);
   matrix[3 + 2 * 4] = 0;

   matrix[0 + 3 * 4] = -(top + 1) / (top - 1);
   matrix[1 + 3 * 4] = -(right + left) / (right - left);
   matrix[2 + 3 * 4] = -(far + near) / (far - near);
   matrix[3 + 3 * 4] = 1;
}

int main()
{
   printf("C APP\n");

   float matrix[] = {
      1, 0, 0, 0,
      0, 1, 0, 0,
      0, 0, 1, 0,
      0, 0, 0, 1,
   };

   ortho(matrix, 0.0f, 800.0f, 0.0f, 600.0f, 0.1f, 100.0f);

   out((float *)matrix);

   printf("\n");
   return 0;
}
