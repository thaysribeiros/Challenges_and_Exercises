#include <stdio.h>

int SquareRoot(int input)
{
    if (input == 0 || input == 1)
    {
        return(input);
    }
    if (input < 0)
    {
        printf("error, there is no negative squareroot in Real numbers\n");
        return -1;
    }
  
    int result;
    result = 2;
    while ((result * result) < input)
    {
        result += 1;
    }
    if (result * result == input)
    {
        return(result);
    }
    else 
    {
        return(result - 1);
    }
}

int main() {
   int number;
   printf("Enter a number: ");
   scanf("%d", &number);
   int squareRoot = SquareRoot(number);

   printf("Square root of %d =  %d\n", number, squareRoot);

   return 0;
}
