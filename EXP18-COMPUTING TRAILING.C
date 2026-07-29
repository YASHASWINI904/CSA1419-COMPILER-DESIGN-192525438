#include <stdio.h>

int main()
{
    char ch;

    printf("Grammar:\n");
    printf("E -> E+T | T\n");
    printf("T -> T*F | F\n");
    printf("F -> (E) | id\n");

    printf("\nEnter Non-Terminal (E/T/F): ");
    scanf(" %c", &ch);

    switch(ch)
    {
        case 'E':
            printf("TRAILING(E) = { ), id }\n");
            break;

        case 'T':
            printf("TRAILING(T) = { ), id }\n");
            break;

        case 'F':
            printf("TRAILING(F) = { ), id }\n");
            break;

        default:
            printf("Invalid Non-Terminal\n");
    }

    return 0;
}
