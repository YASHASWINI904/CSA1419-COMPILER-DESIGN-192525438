#include <stdio.h>

void FOLLOW(char ch)
{
    switch(ch)
    {
        case 'S':
            printf("FOLLOW(S) = { $ }\n");
            break;

        case 'A':
            printf("FOLLOW(A) = { a, b }\n");
            break;

        case 'B':
            printf("FOLLOW(B) = { a, b }\n");
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

    FOLLOW(ch);

    return 0;
}
