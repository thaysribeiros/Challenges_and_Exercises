/*
**
** QWASAR.IO -- my_capitalize
**
** @param {char*} param_1
**
** @return {char*}
**
*/
#include <stdlib.h>
#include <stdio.h>

int my_strlen(char* str)
{
  int len = 0;
  while (str[len] != '\0')
  {
    len += 1;
  }
  return len;
}
int get_index_first_letter(char* str)
{
    int i = 0;
    while (str[i] != '\0')
    {
        if (str[i] >= 'a' && str[i] <= 'z' || str[i] >= 'A' && str[i] <= 'Z')
        {
           return i;  
        }
    i += 1;
    }
    return -1;
}
char* my_capitalize(char* str)
{
  char* result = malloc(sizeof(char)*my_strlen(str));
  int i = 0;
  int j = get_index_first_letter(str); 
      
  //printf("index_first_letter --> %d\n", j);

  while (i < my_strlen(str))
  {
    if (i == j && str[i] >= 'a' && str[i] <= 'z')
    {
      result[i] = str[i]-32;
    }
    else if (i != j && str[i] >= 'A' && str[i] <= 'Z')
    {
      result[i] = str[i]+32;
    }
    else
    {
      result[i] = str[i];
    }
    i += 1;
    }
  return result;
}
