%{
#include<stdio.h>
%}
%token NUM '+' '-' '*'
%left '+' '-'
%left '*' 
%%
S : E '\n' 
| E {printf("accepted\n");return 0;}
;
E : E '+' T {}
E : E '-' T {}
E :T{}
T : T '*' F{}
T  : F {}
F : NUM { }
;
%%
void main()
{
yyparse();
}
void yyerror(char *s) {
    printf(" %s\n",  s);
}
