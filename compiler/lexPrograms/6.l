%{
int oprtrs=0, oprnds=0;
%}
%%
("+"|"-"|"*"|"/") { oprtrs++; }
[0-9]+(\.[0-9]+)?|[a-zA-Z][a-zA-Z0-9_]* { oprnds++; }
(.|\n);
%%
int yywrap() {}
int main()
{
printf("enter arithmetic expression:\n");
yylex();
printf("operators:%d\n Operands:%d\n",oprtrs,oprnds);
return 0;
}