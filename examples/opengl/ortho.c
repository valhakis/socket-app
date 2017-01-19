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

