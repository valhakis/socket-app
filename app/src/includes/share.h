#ifndef MY_SHARE_H
#define MY_SHARE_H

// ortho(view, 0.0f, WIDTH, 0.0f, HEIGHT, 0.1f, 100.0f);
void ortho(float *matrix, float left, float right, float bot, float top, float near, float far);
void identity(float *matrix);

#endif
