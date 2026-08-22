%{
#include <stdio.h>
#include <string.h>

char old_word[50];
char new_word[50];
char sentence[500];
%}

%%

[A-Za-z]+ {
    if (strcmp(yytext, old_word) == 0)
        printf("%s", new_word);
    else
        printf("%s", yytext);
}

[ \t]+ {
    printf("%s", yytext);
}

. {
    printf("%s", yytext);
}

%%

int main()
{
    printf("Enter the sentence:\n");
    fgets(sentence, sizeof(sentence), stdin);

    printf("Enter word to replace: ");
    scanf("%49s", old_word);

    printf("Enter new word: ");
    scanf("%49s", new_word);

    printf("\nModified sentence:\n");

    /* Process the sentence */
    YY_BUFFER_STATE buffer;
    buffer = yy_scan_string(sentence);
    yylex();
    yy_delete_buffer(buffer);

    return 0;
}

int yywrap()
{
    return 1;
}
