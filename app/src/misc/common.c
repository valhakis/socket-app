#include "common.h"
#include <stdio.h>
#include <stdlib.h>
#include <curl/curl.h>
#include <string.h>
#include <libgen.h>
#include <unistd.h>

// GET THE FILENAME EXTENSION
// ====================================================
const char *GetFilenameExtension(const char *filename) {
    const char *dot = strrchr(filename, '.');
    if(!dot || dot == filename) return "";
    return dot + 1;
}

// GET THE FILENAME FROM URL
// ====================================================
// http://example.com/filename.txt -> filename.txt
// ----------------------------------------------------
static char * Basename(char *url)
{
   char *path = strdup(url);
   char *bname = basename(path);
   return bname;
}

// TO BE DELETED TEST FUNCTION
// ====================================================
static int test(struct Common *self)
{
   //self->DownloadTexture(imgUrl);
   return 0;
}

// FUNCTION FOR DOWNLOAD TEXTURE
// ====================================================
size_t write_data(void *ptr, size_t size, size_t nmemb, FILE *stream) {
   size_t written = fwrite(ptr, size, nmemb, stream);
   return written;
}

// DOWNLOAD TEXTURE
// ====================================================
// DownloadTexture("http://example.com/example.jpg")
// ----------------------------------------------------
static int DownloadTexture(const char *url)
{
   CURL *curl;
   FILE *fp;
   CURLcode res;
   char outfile[FILENAME_MAX];
   const char *texture_path = "../src/textures";
   const char *filename = Basename((char *)url);
   sprintf(outfile, "%s/%s", texture_path, filename);
   if (access(outfile, F_OK) != -1) {
      printf("FILE '%s' ALREADY EXISTS\n", outfile);
      return -1;
   }
   curl = curl_easy_init();
   if (curl) {
      fp = fopen(outfile,"wb");
      curl_easy_setopt(curl, CURLOPT_URL, url);
      curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
      curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);
      res = curl_easy_perform(curl);
      /* always cleanup */
      curl_easy_cleanup(curl);
      fclose(fp);
   }
   printf("DOWNLOADED: %s\n", outfile);
   return 0;
}

// DOWNLOAD TEXTURE AS FILENAME
// ====================================================
// DownloadTexture("http://example.com/12se.jpg", "example") -> example.jpg
// ----------------------------------------------------
static int DownloadTextureAs(const char *url, const char *name)
{
   CURL *curl;
   FILE *fp;
   CURLcode res;
   char outfile[FILENAME_MAX];
   const char *texture_path = "../src/textures";
   const char *filename = Basename((char *)url);
   const char *ext = GetFilenameExtension(filename);
   sprintf(outfile, "%s/%s.%s", texture_path, name, ext);

   if (access(outfile, F_OK) != -1) {
      printf("FILE '%s' ALREADY EXISTS\n", outfile);
      return -1;
   }

   curl = curl_easy_init();
   if (curl) {
      fp = fopen(outfile,"wb");
      curl_easy_setopt(curl, CURLOPT_URL, url);
      curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
      curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);
      res = curl_easy_perform(curl);
      /* always cleanup */
      curl_easy_cleanup(curl);
      fclose(fp);
   }
   printf("DOWNLOADED: %s\n", outfile);
   return 0;
}
// DOWNLOAD FONT AS NAME
// ====================================================
// DownloadTexture("http://example.com/12se.jpg", "example") -> example.jpg
// ----------------------------------------------------
static int DownloadFontAs(const char *url, const char *name)
{
   CURL *curl;
   FILE *fp;
   CURLcode res;
   char outfile[FILENAME_MAX];
   const char *font_path = "../src/fonts";
   const char *filename = Basename((char *)url);
   const char *ext = GetFilenameExtension(filename);
   sprintf(outfile, "%s/%s.%s", font_path, name, ext);

   if (access(outfile, F_OK) != -1) {
      printf("FILE '%s' ALREADY EXISTS\n", outfile);
      return -1;
   }

   curl = curl_easy_init();
   if (curl) {
      fp = fopen(outfile,"wb");
      curl_easy_setopt(curl, CURLOPT_URL, url);
      curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
      curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);
      res = curl_easy_perform(curl);
      /* always cleanup */
      curl_easy_cleanup(curl);
      fclose(fp);
   }
   printf("DOWNLOADED: %s\n", outfile);
   return 0;
}

// JUST PRINT TEXT TO SCREEN
// ====================================================
static void text(const char *msg)
{
   printf("COMMON: %s\n", msg);
}

// INITIALIZATION OF COMMON STRUCTURE
// ====================================================
struct Common *CommonInitialize()
{
   struct Common *com = malloc(sizeof(struct Common));

   com->text = text;
   com->test = test;
   com->DownloadTexture = DownloadTexture;
   com->DownloadTextureAs = DownloadTextureAs;

   return com;
}

