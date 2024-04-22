%{
#include<stdio.h>
int flag=0;
%}

%token INTEGER
%left '+' '-'
%left '*' '/' '%' 
%left '(' ')'

%%
arthimeticexp: E{
    printf("result =%d \n",$$);
    return 0;
    };
    
E:E '+' E  {$$=$1+$3;}
  |E '-' E {$$=$1-$3;}
  |E '*' E {$$=$1*$3;}
  |E '/' E {$$=$1/$3;}
  |E '%' E {$$=$1%$3;}
  |'(' E ')' {$$=$2;}
  |INTEGER {$$=$1;}
  ;
%%
  
void main()
{
yyparse();
if(flag==0)
printf("entered arthimetic exp is valid");
}

void yyerror()
{ 
   printf("enter arthimetic exp is invalid");
   flag=1;
}
 
