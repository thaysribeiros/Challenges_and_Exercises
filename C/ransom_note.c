#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

static int *my_ngram(char *to_gram)
{
	int	*re_val = (int *)malloc(sizeof(int) * 256);

	while (*to_gram)
	{
		re_val[(int)*to_gram]++;
		to_gram++;
	}
    int i = 0;
    while(i < 256)
    {
        i += 1;
    }
	return (re_val);
}

bool ransom_note(char *message, char *paper)
{
	int		*message_gram = my_ngram(message);
	int		*paper_gram = my_ngram(paper);
	int		i = 0;
	bool	flag = true;
  
	while (flag && i < 256)
	{
		if (!(isspace(i)) && message_gram[i] > paper_gram[i])
			flag = false;
		i++;
	}
	free(message_gram);
	free(paper_gram);
	return (flag);
}
int main()
{
	char *message = "baby yoda rocks";
	char *paper = "meewqertyuiopqasdfghjklzxcvbnm";
	printf("%d\n", ransom_note(message, paper));
}
