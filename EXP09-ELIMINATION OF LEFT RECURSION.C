#include <stdio.h>

void eliminate(char ch)
{
    switch(ch)
    {
        case 'S':
            printf("S -> (L) | a\n");
            printf("No Left Recursion.\n");
            break;

        case 'L':
            printf("L -> SL'\n");
            printf("L' -> ,SL' | #\n");
            break;

        default:
            printf("Invalid Non-Terminal\n");
    }
}

int main()
{
    char ch;

    printf("Grammar:\n");
    printf("S -> (L) | a\n");
    printf("L -> L,S | S\n");

    printf("\nEnter Non-Terminal: ");
    scanf(" %c", &ch);

    eliminate(ch);

    return 0;
}
