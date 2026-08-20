%{
#include <stdio.h>
%}

%%

^[a-zA-Z_][a-zA-Z0-9_]*$    { printf("VALID IDENTIFIER\n"); }

.*                           { printf("INVALID IDENTIFIER\n"); }

%%

int main()
{
    printf("Enter an identifier:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}