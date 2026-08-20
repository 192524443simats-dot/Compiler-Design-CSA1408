%{
#include <stdio.h>
%}

%%

[ \t\n]+                    ;

"//".*                      ;
"/*"([^*]|\*+[^*/])*\*+"/"  ;

[0-9]+(\.[0-9]+)?           { printf("CONSTANT  : %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*      { printf("IDENTIFIER: %s\n", yytext); }

[+\-*/=]                    { printf("OPERATOR  : %s\n", yytext); }

.                           { /* Ignore other characters */ }

%%

int main()
{
    printf("Enter C program:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}