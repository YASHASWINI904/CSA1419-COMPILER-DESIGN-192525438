#include <stdio.h>
#include <string.h>

struct symbol
{
    char name[20], type[20];
} s[20];

int main()
{
    int ch, i, n = 0, found;
    char key[20];

    do
    {
        printf("\n1.Insert\n2.Display\n3.Search\n4.Exit\n");
        printf("Enter choice: ");
        scanf("%d", &ch);

        switch(ch)
        {
            case 1:
                printf("Enter Identifier: ");
                scanf("%s", s[n].name);
                printf("Enter Data Type: ");
                scanf("%s", s[n].type);
                n++;
                break;

            case 2:
                printf("\nIdentifier\tType\n");
                for(i = 0; i < n; i++)
                    printf("%s\t\t%s\n", s[i].name, s[i].type);
                break;

            case 3:
                found = 0;
                printf("Enter Identifier to Search: ");
                scanf("%s", key);

                for(i = 0; i < n; i++)
                {
                    if(strcmp(key, s[i].name) == 0)
                    {
                        printf("Found: %s\t%s\n", s[i].name, s[i].type);
                        found = 1;
                        break;
                    }
                }

                if(!found)
                    printf("Identifier Not Found\n");
                break;

            case 4:
                break;

            default:
                printf("Invalid Choice\n");
        }

    } while(ch != 4);

    return 0;
}

