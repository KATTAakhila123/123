%{
#include<stdio.h>
%}
%%
"hi" {printf("helloo");}
.* {printf("bye");}
%%
int yywrap(){
return 1;
}
int main(){
printf("enter anything\n");
yylex();
return 0;
}