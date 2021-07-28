/*
**
** QWASAR.IO -- rotone
**
** @param {char*} param_1
**
** @return {char*}
**
*/
int my_strlen(char* str)
{
  int i = 0;
  while (str[i] != '\0')
  {
    i += 1;
  }
  return i;
}         
char* rotone(char* str)
{
	int i = 0;
  	char* result = malloc(sizeof(char)*my_strlen(str));
  	while (str[i] != '\0')
    {
      if (str[i] >= 'a' && str[i] <= 'z' || str[i] >= 'A' && str[i] <= 'Z')
      {
        if (str[i] == 'z')
        {
          result[i] = 'a';
        }
        else if (str[i] == 'Z')
        {
          result[i] = 'A';
        }
        else 
        {
        result[i] = str[i]+1;
        }
      }
      else
      {
        result[i] = str[i];
      }
      i += 1;
    }
  return result;
}
