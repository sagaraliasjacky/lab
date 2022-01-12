%{

int n=0;
int p=0;
int fn=0;
int fp=0;

%}

%%
[\-][0-9]+ {n++;}
[0-9]+ {p++;}
[\-][0-9]*\.[0-9]+ {fn++;}
[0-9]*\.[0-9]+ {fp++;}


%%
int yywrap(){return 1;}

int main()
{
printf("Enter the numbers:\n");
yylex();
printf("number of positive numbers are:%d\n",p);
printf("number of negative  nos are:%d\n",n);
printf("number of negative fractions are:%d\n",fn);
printf("number of positive fractions are:%d\n",fp);
return 0;
}
