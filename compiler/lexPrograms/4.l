%{
#include<stdio.h>
#include<string.h>
int noprt=0,nopnd=0,valid=1,top=-1,i=0,j=0;
char opnd[10][10], oprt[10][10], a[100];
%}
%%
"(" { top++; a[top] = '('; }
"{" { top++; a[top] = '{'; }
"[" { top++; a[top] = '['; }
")" { if (a[top]!= '(') { valid=0; return 0;}
      else
        top--;
    }
"}" { if(a[top]!='{')
      {
          valid=0; return 0; }
      else
          top--;
    }
"+"|"-"|"*"|"/" { noprt++; strcpy(oprt[i],yytext); i++; }
[0-9]+|[a-zA-Z][a-zA-Z0-9]* { nopnd++; strcpy(opnd[j],yytext); j++; }
%%
int main()
{
    int k;
    printf("enter the arithmetic expression:");
    yylex();
    if(valid==1 && top==-1 && (nopnd-noprt)==1)
    {
        printf("\nvalid\n");
        printf("the operators are\n");
        for(k=0;k<i;k++)
        printf("%s\n",oprt[k]);
        printf("the operands are\n");
        for(k=0;k<j;k++)
        printf("%s\n",opnd[k]);
    }
    else
        printf("expression is invalid\n");
    return (0);
}
int yywrap(){
    return 1;
}