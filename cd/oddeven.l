%{
#include<stdio.h>
int n;
%}
%%
[0-9]+ { n=atoi(yytext);
if(n%2==0){
printf("%d is even numbber\n",n);
}
else{
printf("%d is odd numbber\n",n);
}
}
%%
int yywrap(){
return 1;
}

int main(){
printf("enter a numuber\n");
yylex();
return 0;
}