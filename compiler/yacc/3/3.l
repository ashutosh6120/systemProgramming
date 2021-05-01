%{
#include"y.tab.h"
%}
%%
[aA] { return A; }
[ab] { return B; }
\n { return NL; }
. { return yytext[0]; }
%%
int yywrap()
{ return 1; }