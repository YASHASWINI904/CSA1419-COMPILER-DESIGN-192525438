%{
#include <stdio.h>

int macros = 0;
int headers = 0;
%}

%%

^[ \t]*#[ \t]*define[ \t]+[a-zA-Z_][a-zA-Z0-9_]*   { macros++; }

^[ \t]*#[ \t]*include[ \t]*[<"][^>"]+[>"]          { headers++; }

.|\n ;

%%

int main()
{
    printf("Enter C program:\n");

    yylex();

    printf("\nNumber of Macros Defined = %d\n", macros);
    printf("Number of Header Files Included = %d\n", headers);

    return 0;
}

int yywrap()
{
    return 1;
}
