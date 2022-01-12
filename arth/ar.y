%{

    /* Definition section */ 

  #include <stdio.h> 
  #include<stdlib.h>

%}

 

%token NUMBER ID





%left '+' '-' 

%left '*' '/' 

 

/* Rule Section */

%% 



                

              





e: 

    e'+' e 

    | e '-' e

    | e '*' e

    | e '/' e

    

 

    | '(' e ')' 

    | NUMBER;

    | ID ;

% %

 

int main() { 

    printf("Enter the expression\n"); 

    yyparse(); 
    prinft("valid expression\n");
    }
    yyerror()
  {
  printf("Invalid expression\n");
  exit(0):

}

 







