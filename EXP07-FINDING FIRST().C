#include <stdio.h>

void FIRST(char ch)
{
    switch(ch)
    {
        case 'A':
            printf("FIRST(A) = { # }\n");
            break;

        case 'B':
            printf("FIRST(B) = { # }\n");
            break;

        case 'S':
            printf("FIRST(S) = { a, b }\n");
            break;

        default:
            printf("Invalid Non-Terminal\n");
    }
}

int main()
{
    char ch;

    printf("Grammar:\n");
    printf("S -> AaAb | BbBa\n");
    printf("A -> #\n");
    printf("B -> #\n");

    printf("\nEnter Non-Terminal: ");
    scanf(" %c", &ch);

    FIRST(ch);

    return 0;
}
