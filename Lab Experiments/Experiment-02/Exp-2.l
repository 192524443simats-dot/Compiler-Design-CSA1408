%{
#include <stdio.h>
%}

%%

^[ \t]*"//".*                 { printf("It is a SINGLE-LINE COMMENT\n"); }

^[ \t]*"/*"([^*]|\*+[^*/])*\*+"/"[ \t]*$  { printf("It is a MULTI-LINE COMMENT\n"); }

.*                             { printf("It is NOT a COMMENT\n"); }

%%

int main()
{
    printf("Enter a line:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}