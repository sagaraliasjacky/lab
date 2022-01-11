%{
#include<stdio.h>
int yylex();
void yyerror();
int flag=0;
%}

%token NUMBER
%left '+' '-'
%left '*' '/'
%left '(' ')'

%%
ArithmeticExpression:e{printf("\nResult:\t%d\n",$$);return 0;};
e: e '+' e {$$=$1+$3;}
|  e '-' e {$$=$1-$3;}
|  e '*' e {$$=$1*$3;}
|  e '/' e {$$=$1/$3;}
|  '('e')' {$$=$2;}
| NUMBER   {$$=$1;};

%%

void main()
{
  printf("Type the input & press enter key\n");
  yyparse();
  if (flag==0){printf("\nvalid\n");}  
}
yyerror()
{
  printf("Invalid expression\n");exit(0);
}

