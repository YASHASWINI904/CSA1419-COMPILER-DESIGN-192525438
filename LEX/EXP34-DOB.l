%{
#include <stdio.h>
%}

%%

([0-2][0-9]|3[0-1])\/(0[1-9]|1[0-2])\/[0-9]{4} {
    printf("Valid Date of Birth\n");
}

[0-9]+\/[0-9]+\/[0-9]+ {
    printf("Invalid Date of Birth\n");
}

[ \t\n]+ {
}

. {
    printf("Invalid Date of Birth\n");
}

%%

int main()
{
    printf("Enter Date of Birth (DD/MM/YYYY): ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
