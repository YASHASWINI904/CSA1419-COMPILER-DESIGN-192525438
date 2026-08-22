%{
#include <stdio.h>
%}

%%

"int"       { printf("KEYWORD     : %s\n", yytext); }
"float"     { printf("KEYWORD     : %s\n", yytext); }
"char"      { printf("KEYWORD     : %s\n", yytext); }
"double"    { printf("KEYWORD     : %s\n", yytext); }
"void"      { printf("KEYWORD     : %s\n", yytext); }
"if"        { printf("KEYWORD     : %s\n", yytext); }
"else"      { printf("KEYWORD     : %s\n", yytext); }
"for"       { printf("KEYWORD     : %s\n", yytext); }
"while"     { printf("KEYWORD     : %s\n", yytext); }
"return"    { printf("KEYWORD     : %s\n", yytext); }

[0-9]+      { printf("CONSTANT    : %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("IDENTIFIER  : %s\n", yytext);
}

"+"         { printf("OPERATOR    : %s\n", yytext); }
"-"         { printf("OPERATOR    : %s\n", yytext); }
"*"         { printf("OPERATOR    : %s\n", yytext); }
"/"         { printf("OPERATOR    : %s\n", yytext); }
"="         { printf("OPERATOR    : %s\n", yytext); }
"<"         { printf("OPERATOR    : %s\n", yytext); }
">"         { printf("OPERATOR    : %s\n", yytext); }

"("         { printf("SPECIAL SYMBOL : %s\n", yytext); }
")"         { printf("SPECIAL SYMBOL : %s\n", yytext); }
"{"         { printf("SPECIAL SYMBOL : %s\n", yytext); }
"}"         { printf("SPECIAL SYMBOL : %s\n", yytext); }
";"         { printf("SPECIAL SYMBOL : %s\n", yytext); }
","         { printf("SPECIAL SYMBOL : %s\n", yytext); }

[ \t\r\n]+  { }

.           { printf("UNKNOWN     : %s\n", yytext); }

%%

int main()
{
    printf("====================================\n");
    printf("       C TOKEN SEPARATION\n");
    printf("====================================\n");
    printf("Enter C program:\n\n");

    yylex();

    return 0;
}

int yywrap()
{
    return 1;
}
