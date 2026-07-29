#include <stdio.h>
#include <string.h>

char str[20];
int i = 0;

void E(), EP(), T(), TP(), F();

void E()
{
    T();
    EP();
}

void EP()
{
    if(str[i] == '+')
    {
        i++;
        T();
        EP();
    }
}

void T()
{
    F();
    TP();
}

void TP()
{
    if(str[i] == '*')
    {
        i++;
        F();
        TP();
    }
}

void F()
{
    if(str[i] == 'i' && str[i + 1] == 'd')
        i += 2;
    else if(str[i] == '(')
    {
        i++;
        E();
        if(str[i] == ')')
            i++;
    }
}

int main()
{
    printf("Enter the input string: ");
    scanf("%s", str);

    E();

    if(i == strlen(str))
        printf("String Accepted\n");
    else
        printf("String Rejected\n");

    return 0;
}
