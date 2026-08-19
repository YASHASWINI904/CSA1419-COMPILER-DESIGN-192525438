%{
#include <stdio.h>

int characters = 0;
int lines = 0;
int words = 0;
%}

%%

"//".*          ;

"/*"([^*]|\*+[^*/])*\*+"/"    ;

[ \t]+          ;

\n              { lines++; }

[a-zA-Z0-9_]+   { words++; characters += yyleng; }

.               { characters++; }

%%

int main()
{
    printf("Enter C program:\n");
    yylex();

    printf("\nNumber of Characters = %d", characters);
    printf("\nNumber of Lines      = %d", lines);
    printf("\nNumber of Words      = %d\n", words);

    return 0;
}

int yywrap()
{
    return 1;
}
