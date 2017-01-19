#include <stdio.h>
#include <math.h>
#include <string.h>
#include <linmath.h>

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
   printf("================================\n");
}

void perspective(float *matrix, float fov, float aspect, float near, float far)
{
   float xmax = near * tan(fov * M_PI / 360);
   float xmin = -xmax;

   float ymin = xmin / aspect;
   float ymax = xmax / aspect;

   //matrix[0 * 4 + 0] = (2.0f * near) / (xmax - xmin);
   matrix[0 * 4 + 1] = 0;
   matrix[0 * 4 + 2] = (xmax + xmin) / (xmax - xmin);
   matrix[0 * 4 + 3] = 0;

   matrix[1 * 4 + 0] = 0;
   matrix[1 * 4 + 1] = (2.0f * near) / (ymax - ymin);
   matrix[1 * 4 + 2] = (ymax + ymin) / (ymax - ymin);
   matrix[1 * 4 + 3] = 0;

   matrix[2 * 4 + 0] = 0;
   matrix[2 * 4 + 1] = 0;
   matrix[2 * 4 + 2] = -(far + near) / (far - near);
   matrix[2 * 4 + 3] = -(2.0 * far * near) / (far - near);

   matrix[3 * 4 + 0] = 0;
   matrix[3 * 4 + 1] = 0;
   matrix[3 * 4 + 2] = -1.0;
   matrix[3 * 4 + 3] = 0;
}


// perspective
void test(float m[4][4]) {

}

void gldPerspective(float *matrix, float fovx, float aspect, float zNear, float zFar)
{
   // This code is based off the MESA source for gluPerspective
   // *NOTE* This assumes GL_PROJECTION is the current matrix


   float xmin, xmax, ymin, ymax;
   float m[4][4] = {
      1, 0, 0, 0,
      0, 1, 0, 0,
      0, 0, 1, 0,
      0, 0, 0, 1,
   };

   xmax = zNear * tan(fovx * M_PI / 360.0);
   xmin = -xmax;

   ymin = xmin / aspect;
   ymax = xmax / aspect;

   // Set up the projection matrix
   m[0][0] = (2.0 * zNear) / (xmax - xmin);
   m[1][1] = (2.0 * zNear) / (ymax - ymin);
   m[2][2] = -(zFar + zNear) / (zFar - zNear);

   m[0][2] = (xmax + xmin) / (xmax - xmin);
   m[1][2] = (ymax + ymin) / (ymax - ymin);
   m[3][2] = -1.0;

   m[2][3] = -(2.0 * zFar * zNear) / (zFar - zNear);

   // Add to current matrix
   memcpy(matrix, m, sizeof(m));
}

// radians = degrees * (M_PI / 180);

void MakPerspective(float *matrix, float fovy, float aspect, float zNear, float zFar)
{
   float m[4][4] = {
      0, 0, 0, 0,
      0, 0, 0, 0,
      0, 0, 0, 0,
      0, 0, 0, 0,
   };

   //m[0][0] = fovj / (aspect * tan(rad / ))

   memcpy(matrix, m, sizeof(m));
}

void glmPerspective(float *matrix, float fovy, float aspect, float zNear, float zFar) {
   float m[4][4] = {
      1, 0, 0, 0,
      0, 1, 0, 0,
      0, 0, 1, 0,
      0, 0, 0, 1,
   };

   memcpy(matrix, m, sizeof(m));
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

   MakPerspective(matrix, 45.0f, (float)800 / (float)600, 0.1f, 100.0f);

   //perspective(matrix, 45.0f, (float)800 / (float)600, 0.1f, 100.0f);
   //ortho(matrix, 0.0f, 800.0f, 0.0f, 600.0f, 0.1f, 100.0f);

   //out((float *)matrix);
   //gldPerspective(matrix, 45.0f, (float)800 / (float)600, 0.1f, 100.0f);
   //out((float *)matrix);

   printf("\n");
   return 0;
}
