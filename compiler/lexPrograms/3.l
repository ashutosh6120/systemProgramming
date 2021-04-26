%{
int valid=0;
FILE *fp=NULL;
%}
chars [a-zA-Z]
digit [0-9]
us _
id {chars} ({chars}|{digit}|{us})+
newline \n
blank " "
preprocessor "#define" {blank}+{id}{blank}+(\+|-)?{digit}+(\.{digit}+)?
include "#include" {blank}*\<{id}\."h"\>
%%
({include}|{newline}|{preprocessor})*
"int main \(\)" ({newline}|{blank})*\{(./{newline}|{blank})*\}{valid=1;}
%%
int yywrap(){
return 1;
}
int main(){
fp=(FILE*)fopen("name.c","r");
yyin=fp;
printf("Reading\"name.c".\n");
yylex();
if(valid==1)
  printf("valid c program\n");
else
  printf("\ninvalid c program\n");
return 0;
}