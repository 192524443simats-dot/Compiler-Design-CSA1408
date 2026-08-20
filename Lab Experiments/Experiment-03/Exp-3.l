%{
#include <stdio.h>
%}

%%

[ \t\n]+                    ;

"//".*                      ;

"/*"([^*]|\*+[^*/])*\*+"/"  ;

.                           { printf("%s", yytext); }

%%

int main()
{
    printf("The Output after removing spaces :\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}