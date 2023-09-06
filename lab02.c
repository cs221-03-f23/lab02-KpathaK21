#include<stdio.h>
#include <string.h>

int main(int argc, char *argv[])
 {

  char *ptr = argv[1];
  int count = 0;

  //checks if there are less than 3 arguments then program is invalid
   if(argc < 3 ) 
  {
    printf("Invalid arguments\n");
    return 1;
  }

 // here if there are two arguments then with the use of two pointers(@string and @substring) finds the asked character(S)
   if (argc == 2) 
  {
    char ptr2 = argv[1][0];
    int i;
    for (i = 0; ptr[i]; i++) {
      if (ptr[i] == ptr2) {
        count++;
      }
    }
  }


 // here the pointer starts from the front of the string and runs till it hits null(EOS) to find the asked character(s)
  else 
    {
    char *ptr2 = argv[2];
    char *p = ptr;
    while ((p = strstr(p, ptr2)) != NULL) 
     {
      count++;
      p++;
     }
    }

    // finally prints the number of time(s) asked character(s) were printed
	printf("%d\n", count);

  return 0;
}


