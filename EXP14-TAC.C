#include <stdio.h>
#include <string.h>

int main()
{
    char exp[20];
    int i, temp = 1;

    printf("Enter Expression: ");
    scanf("%s", exp);

    for(i = 0; i < strlen(exp); i++)
    {
        if(exp[i]=='+' || exp[i]=='-' || exp[i]=='*' || exp[i]=='/')
        {
            printf("t%d = %c %c %c\n", temp, exp[i-1], exp[i], exp[i+1]);
            exp[i+1] = '0' + temp;
            temp++;
        }
    }

    return 0;
}
