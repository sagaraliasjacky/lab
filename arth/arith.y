%{
#include<stdio.h>
#include<stdlib.h>
%}

%token NUM ID
%left '+' '-'
%left '*' '/'

%%
e: e'+'e
|  e'-'e
|  e'*'e
|  e'/'e
|  '('e')'
| NUM
| ID
%%

main()
{
  printf("TYpe the expression & press enter key\n");
  yyparse();
  printf("valid expression\n");
}
yyerror()
{
  printf("Invalid expression\n");exit(0);
}
 
