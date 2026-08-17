%{
#include <stdio.h>
%}

%%
abc     { printf("ABC"); }
.       { printf("%s", yytext); }
\n      { printf("\n"); }
%%

int main()
{
    printf("Enter a string: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
