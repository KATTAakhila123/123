%{
#include<stdio.h>
int n;
%}
%%
[+-]*[0-9]+ {n=atoi(yytext);
if(n<0){
printf("negive number\n");
}
else{
printf("positive number\n");
}
}
%%
int yywrap(){
return 1;}
int main(){
printf("enter a numuber\n");
yylex();
return 0;
}