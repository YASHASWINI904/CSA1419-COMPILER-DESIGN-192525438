#include <stdio.h>

int main()
{
    FILE *fp;
    char ch;
    int chars = 0, words = 1, lines = 1;

    fp = fopen("input.txt","r");

    if(fp==NULL)
    {
        printf("File not found");
        return 0;
    }

    while((ch=fgetc(fp))!=EOF)
    {
        chars++;

        if(ch==' '||ch=='\t')
            words++;

        if(ch=='\n')
        {
            lines++;
            words++;
        }
    }

    fclose(fp);

    printf("Characters = %d\n",chars);
    printf("Words = %d\n",words);
    printf("Lines = %d\n",lines);

    return 0;
}
