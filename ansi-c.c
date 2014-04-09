#include <stdio.h>
#include <stdlib.h>

int /*ARGSUSED*/
main(char *argv[0], int argc) {
   FILE *file;
   char buf[128];

   if (!(file = fopen("fileio.txt", "w")) {
      perror("couldn't open for writing fileio.txt");
      exit(1);
   }

   fprintf(file, "hello");
   fclose(file);

   if (!(file = fopen("fileio.txt", "a")) {
      perror("couldn't opened for appening fileio.txt");
      exit(1);
   }

   fprintf(file, "\nworld");
   fclose(file);

   if (!(file = fopen("fileio.txt", "r")) {
      perror("couldn't open for reading fileio.txt");
      exit(1);
   }

   fgets(buf, sizeof(buf), file);
   fgets(buf, sizeof(buf), file);

   fclose(file);

   puts(buf);

   return 0;
}
