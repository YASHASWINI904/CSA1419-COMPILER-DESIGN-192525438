#include <stdio.h>

void leftFactor(char ch)
{
    switch(ch)
    {
        case 'S':
            printf("S -> iEtSS' | a\n");
            printf("S' -> eS | #\n");
            break;

        case 'E':
            printf("E -> b\n");
            break;

        default:
            printf("Invalid Non-Terminal\n");
    }
}

int main()
{
    char ch;

    printf("Grammar:\n");
    printf("S -> iEtS | iEtSeS | a\n");
    printf("E -> b\n");

    printf("\nEnter Non-Terminal: ");
    scanf(" %c", &ch);

    leftFactor(ch);

    return 0;
}
