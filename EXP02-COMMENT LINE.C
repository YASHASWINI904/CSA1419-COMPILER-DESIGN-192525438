#include <stdio.h>
#include <string.h>

int main()
{
    char s[200];
    int n;

    printf("Enter a line:\n");
    fgets(s, 200, stdin);

    n = strlen(s);

    if(s[0]=='/' && s[1]=='/')
        printf("Single-line Comment");
    else if(s[0]=='/' && s[1]=='*' && s[n-3]=='*' && s[n-2]=='/')
        printf("Multi-line Comment");
    else
        printf("Not a Comment");

    return 0;
}
