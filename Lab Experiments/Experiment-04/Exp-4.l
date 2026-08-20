%{
#include <stdio.h>
%}

%%

[+]       { printf("%s : VALID OPERATOR\n", yytext); }
[-]       { printf("%s : VALID OPERATOR\n", yytext); }
[*]       { printf("%s : VALID OPERATOR\n", yytext); }
[/]       { printf("%s : VALID OPERATOR\n", yytext); }

[ \t\n]+  ;

.         { printf("%s : INVALID OPERATOR\n", yytext); }

%%

int main()
{
    printf("Enter operators:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}