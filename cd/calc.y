%{
#include<stdio.h>
void yyerror(char *s);
int flag=0;
%}

%token id
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
S: E{printf("result =%d\n",$$);return 0;};
E: E '+' E {$$=$1+$3;}
| E '-' E {$$=$1-$3;}
| E '*' E {$$=$1*$3;}
| E '/' E {$$=$1/$3;}
| E '%' E {$$=$1%$3;}
| '(' E ')'{$$=$2;}
| id {$$=$1;}
;
%%

int main()
{
 printf("enter expression\n");
 yyparse();
 if(flag==0)
   printf("\n valid");
 return 0;
}

void yyerror(char *s)
{
  printf("invalid");
  flag=1;
}
