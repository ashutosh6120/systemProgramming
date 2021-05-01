%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B NL
%%
start: A S B NL { printf("string accepted\n"); exit(0); }
;
S: S A
|
;
%%
int yyerror(char *msg){
    printf("string rejected\n");
    exit(0);
}
int main()
{
    printf("enter string of a's and b's:\n");
    yyparse();
    return 0;
}