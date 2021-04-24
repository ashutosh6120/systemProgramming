%{
int vowels = 0;
int consonents = 0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonents++;}
%%
int main()
{
yylex();
printf("no of vowels = %d\n",vowels);
printf("no of consonents = %d\n",consonents);
return(0);
}
int yywrap(){
return 1;
}
