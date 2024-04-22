%{
#include<stdio.h>
char *c;
%}
%%
"<"|">"|"<="|">="|"=="|"!=" {printf("it is relational operator\n");}
.* {printf("not relational op\n");}
%%
int yywrap(){
}
int main(){
printf("enter any operator \n");
yylex();
}
