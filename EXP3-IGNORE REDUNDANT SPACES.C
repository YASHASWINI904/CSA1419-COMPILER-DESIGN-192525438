#include <stdio.h>

int main()
{
    char s[500];
    int i=0;

    printf("Enter source code:\n");
    while((s[i]=getchar())!=EOF)
        i++;
    s[i]='\0';

    for(i=0;s[i]!='\0';i++)
    {
        if(s[i]==' '||s[i]=='\t'||s[i]=='\n')
            continue;

        if(s[i]=='/'&&s[i+1]=='/')
        {
            while(s[i]!='\n'&&s[i]!='\0')
                i++;
        }
        else if(s[i]=='/'&&s[i+1]=='*')
        {
            i+=2;
            while(!(s[i]=='*'&&s[i+1]=='/'))
                i++;
            i++;
        }
        else
            printf("%c",s[i]);
    }

    return 0;
}
