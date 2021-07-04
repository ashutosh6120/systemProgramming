%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(char *msg);
%}
%token ID
%left'+''-'
%left'*''/'
%left'('')'
%%
start: E { printf("valid arithmetic expression\n");
	   printf("result=%d\n",$1);
	   exit(0);
         }
;
E:E'+'E { $$=$1+$3; }
|E'-'E { $$=$1-$3; }
|E'*'E { $$=$1*$3; }
|E'/'E { $$=$1/$3; }
|'('E')' { $$=$2; }
|ID { $$=$1; }
;
%%
void yyerror(char* msg)
{
printf("\nExpression is invalid\n");
exit(0);
}
int main()
{
printf("Enter the expression\n");
yyparse();
return 0;
}

