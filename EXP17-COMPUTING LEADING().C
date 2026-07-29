#include <stdio.h>

int main() {
    char ch;

    printf("Grammar:\n");
    printf("E -> E+T | T\n");
    printf("T -> T*F | F\n");
    printf("F -> (E) | id\n\n");

    printf("Enter Non-Terminal (E/T/F): ");
    scanf(" %c", &ch);

    switch(ch) {
        case 'E':
            printf("\nLEADING(E) = { (, id }\n");
            break;
        case 'T':
            printf("\nLEADING(T) = { (, id }\n");
            break;
        case 'F':
            printf("\nLEADING(F) = { (, id }\n");
            break;
        default:
            printf("\nInvalid Non-Terminal\n");
    }

    return 0;
}
