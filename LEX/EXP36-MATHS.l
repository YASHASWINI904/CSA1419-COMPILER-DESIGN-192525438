%{
#include <stdio.h>
#include <stdlib.h>

float num1, num2;
char op;
%}

%%

[0-9]+(\.[0-9]+)?[ \t]*[\+\-\*\/][ \t]*[0-9]+(\.[0-9]+)? {
    sscanf(yytext, "%f %c %f", &num1, &op, &num2);

    switch(op)
    {
        case '+':
            printf("Result = %.2f\n", num1 + num2);
            break;

        case '-':
            printf("Result = %.2f\n", num1 - num2);
            break;

        case '*':
            printf("Result = %.2f\n", num1 * num2);
            break;

        case '/':
            if(num2 == 0)
                printf("Division by zero is not possible\n");
            else
                printf("Result = %.2f\n", num1 / num2);
            break;
    }
}

[ \t\n]+
{
}

. {
    printf("Invalid input\n");
}

%%

int main()
{
    printf("Enter a mathematical expression: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
