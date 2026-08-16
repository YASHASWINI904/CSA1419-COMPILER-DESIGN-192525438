%{
#include <stdio.h>
int ln = 0;
%}

%%
.*\n    {
            ln++;
            printf("%d: %s", ln, yytext);
        }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter text:\n");
    yylex();
    return 0;
}
