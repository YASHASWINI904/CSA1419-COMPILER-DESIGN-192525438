%{
#include <stdio.h>
%}

%%
"<"[^>]*">"    { printf("HTML Tag: %s\n", yytext); }
.|\n           ;
%%

int main()
{
    printf("========== ENTER HTML CODE ==========\n\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
