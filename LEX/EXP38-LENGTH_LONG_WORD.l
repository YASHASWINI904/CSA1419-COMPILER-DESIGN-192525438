%{
#include <stdio.h>
int consonant_count = 0;
%}

%%

[a-zA-Z] {
    if (yytext[0] != 'a' && yytext[0] != 'e' &&
        yytext[0] != 'i' && yytext[0] != 'o' &&
        yytext[0] != 'u' && yytext[0] != 'A' &&
        yytext[0] != 'E' && yytext[0] != 'I' &&
        yytext[0] != 'O' && yytext[0] != 'U')
    {
        consonant_count++;
    }
}

\n {
    printf("Number of consonants = %d\n", consonant_count);
    return 0;
}

. {
    /* Ignore spaces, digits and special characters */
}

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a word or sentence:\n");
    yylex();
    return 0;
}
