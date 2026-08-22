%{
#include <stdio.h>
%}

%%

"http://"("www.")?[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)+ {
    printf("Valid URL\n");
}

"https://"("www.")?[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)+ {
    printf("Valid URL\n");
}

[ \t\n]+ {
}

. {
    printf("Invalid URL\n");
}

%%

int main()
{
    printf("Enter URL: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
