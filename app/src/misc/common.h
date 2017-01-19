#ifndef MY_COMMON_h
#define MY_COMMON_h

struct Common {
   void (*text)();
   int (*test)(struct Common *);
   int (*DownloadTexture)(const char *url);
   int (*DownloadTextureAs)(const char *url, const char *name);
};
struct Common *CommonInitialize();

#endif
