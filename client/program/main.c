#include <stdio.h>
#include <windows.h>

int main()
{
   printf("THIS IS THE ONE AND ONLY APP.EXE\n");
   WinExec("notepad", 1);
   return 0;
}
