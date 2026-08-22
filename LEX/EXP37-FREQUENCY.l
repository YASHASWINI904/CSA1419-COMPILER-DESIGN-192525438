%{
#include <stdio.h>
#include <string.h>

char word[100];
int count = 0;
%}

%%

[a-zA-Z]+ {
    if (strcmp(yytext, word) == 0)
        count++;
}

[ \t\n]+ {
}

. {
}

%%

int main()
{
    printf("Enter the word to search: ");
    scanf("%99s", word);

    printf("Enter the sentence:\n");

    getchar();   /* remove newline after scanf */
    yylex();

    printf("Frequency of \"%s\" = %d\n", word, count);

    return 0;
}

int yywrap()
{
    return 1;
}
