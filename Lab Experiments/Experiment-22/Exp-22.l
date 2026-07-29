%{
#include <stdio.h>
int tag_count = 0;
%}

%%
"<"[^>]*> { 
    tag_count++; 
    printf("%s\n", yytext); 
}
.|\n { /* Ignore other text and spaces */ }
%%

int yywrap(void) {
    return 1;
}

int main(int argc, char *argv[]) {
    printf("\nEnter the HTML tag lines:");
    if (argc > 1) {
        FILE *f = fopen(argv[1], "r");
        if (!f) {
            perror("Error opening file");
            return 1;
        }
        yyin = f;
    }
    yylex();
    printf("\nTotal HTML tags found: %d\n", tag_count);
    return 0;
}
