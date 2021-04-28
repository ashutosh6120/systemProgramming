%{
int count=0;
char identifiers[50][50];
%}
underscore _
alpha [a-zA-Z]
digit [0-9]
identifier ({underscore}|{alpha})({underscore}|{alpha}|{digit})*
%%
[^\na-zA-ZA-Z_]+[^\n]* { }
{identifier} {
strcpy(identifiers[count],yytext);
count++;
}
.|\n { }
%%
int yywrap() { return 1; }
int main()
{
yylex();
printf("no of identifiers: %d\n",count);
printf("identifiers are:\n");
for(int i=0;i<count;i++)
   printf("%s\n",identifiers[i]);
return 0;
}