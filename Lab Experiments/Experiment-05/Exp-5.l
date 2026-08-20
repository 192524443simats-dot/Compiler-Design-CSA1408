%{
#include <stdio.h>

int whitespace = 0;
int newline = 0;
%}

%%

[ \t]      { whitespace++; }

\n         { newline++; }

.          ;

%%

int main()
{
    printf("Enter the text:\n");
    yylex();

    printf("\nNumber of whitespaces : %d\n", whitespace);
    printf("Number of newlines    : %d\n", newline);

    return 0;
}

int yywrap()
{
    return 1;
}