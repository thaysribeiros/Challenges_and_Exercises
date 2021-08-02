/*
1 2 3
4 5 6
7 8 9

7 4 1
8 5 2
9 6 3
*/

#include <stdio.h>

void my_swap(int* a, int* b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

void rotation(int matrix[3][3], int size)
{
    int i = 0;
    int j = 0;

    while (i < size)
    {
        j = i;
        while (j < size)
        {
            my_swap(&matrix[j][i], &matrix[i][j]);
            j += 1;
        }
        i += 1;
    }

    i = 0;
    while (i < size)
    {
        j = 0;
        while (j < size/2)
        {
            my_swap(&matrix[i][j], &matrix[i][size-j-1]);
            j += 1;
        }
        i += 1;
    }
}

void print_matrix(int matrix[3][3], int size)
{
    int i = 0;
    int j = 0;
    while (i < size)
    {
        j = 0;
        while (j < size)
        {
            printf("%i ", matrix[i][j]);
            j += 1;
        }
        printf("\n");
        i += 1;
    }
    printf("\n");
}

int main()
{
    int size = 3;
    int matrix[3][3] = {
        {1,2,3}, {4, 5, 6}, {7, 8, 9}
    };

    print_matrix(matrix, size);
    rotation(matrix, size);
    print_matrix(matrix, size);
}
