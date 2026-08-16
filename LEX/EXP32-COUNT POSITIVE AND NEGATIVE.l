%{
#include <stdio.h>

int positive = 0, negative = 0;
%}

%%
[+][0-9]+|[0-9]+       { printf("Positive number: %s\n", yytext); positive++; }
[-][0-9]+              { printf("Negative number: %s\n", yytext); negative++; }
[ \t\n]+               ;
.                      ;
%%

int main()
{
    printf("Enter numbers:\n");
    yylex();

    printf("\nCount of positive numbers = %d\n", positive);
    printf("Count of negative numbers = %d\n", negative);

    return 0;
}

int yywrap()
{
    return 1;
}
