%{
int posnum=0, negnum=0, posflo=0, negflo=0;
%}
%%
([0-9]+) { posnum++;}
-([0-9]+) { negnum++;}
([0-9]*\.[0-9]+) { posflo++;}
-([0-9]*\.[0-9]+) { negflo++;}
%%
int main()
{
yylex();
printf("no of positive numbers=%d\n",posnum);
printf("no of negative numbers=%d\n",negnum);
printf("no of floating-positive numbers=%d\n",posflo);
printf("no of floating-negative numbers=%d\n",negflo);
return(0);
}
int yywrap(){
return 1;
}

