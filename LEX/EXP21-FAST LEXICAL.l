%{
#include <stdio.h>
%}

%%

"int"|"float"|"char"|"double"|"void"|"if"|"else"|"for"|"while"|"return"  { printf("KEYWORD    : %s\n", yytext); }

[0-9]+\.[0-9]+                                                            { printf("FLOAT      : %s\n", yytext); }

[0-9]+                                                                    { printf("CONSTANT   : %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*                                                    { printf("IDENTIFIER : %s\n", yytext); }

"=="|"!="|"<="|">="|"++"|"--"|"+"|"-"|"*"|"/"|"="|"<"|">"                { printf("OPERATOR   : %s\n", yytext); }

"("|")"|"{"|"}"|";"|","                                                  { printf("SYMBOL     : %s\n", yytext); }

[ \t\r\n]+                                                                ;

"//".*                                                                    ;

.                                                                         { printf("UNKNOWN    : %s\n", yytext); }

%%

int main()
{
    printf("LEXICAL ANALYZER\n");
    printf("================\n");

    yylex();

    return 0;
}

int yywrap()
{
    return 1;
}
