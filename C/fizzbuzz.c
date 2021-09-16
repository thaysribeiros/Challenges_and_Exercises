#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
/*
**
** QWASAR.IO -- fizz_buzz
**
** @param {int} param_1
**
** @return {string_array*}
**
*/
#ifndef STRUCT_STRING_ARRAY
#define STRUCT_STRING_ARRAY
typedef struct s_string_array
{
    int size;
    char** array;
} string_array;
#endif

string_array* fizz_buzz(int n)
{
  string_array* s_array = (string_array *) malloc(sizeof(string_array));
  s_array->array = (char **) malloc(sizeof(char * ) * n + 1);

  int i = 0;
  int nbr = 1;
  while (nbr <= n)
  {
    if (nbr % 3 == 0 && nbr % 5 == 0){
      s_array->array[i] = "FizzBuzz"; 
    }
    else if (nbr % 3 == 0)
    {
     s_array->array[i] = "Fizz"; 
    }
    else if (nbr % 5 == 0)
    {
     s_array->array[i] = "Buzz"; 
    } else {
      char *string = (char *)malloc(sizeof(char *) * 15);
      itoa(nbr, string, 10);
      s_array->array[i] = string;
    }
    i += 1;
    nbr += 1;
  }
  return s_array;
}

int main(void) {
  int size = 15;
  string_array *s_array;
  s_array = fizz_buzz(size);
  for(int i = 0; i < size; i++){
    printf("%s\n",s_array->array[i]);
  }
  return 0;
}
