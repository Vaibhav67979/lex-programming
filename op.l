%option noyywrap
%{
#include<stdio.h>
int icount = 0;
int ccount = 0;
int ocount = 0;
%}
%%
[ \t]+ ;
[\+\-\*\/] {ocount++;}
[0-9]+ {ccount++;}
[a-zA-Z][a-zA-Z0-9]* {icount++;}
. |
\n {return 0;}
%%
int main(){
printf("Enter an expression : ");
yylex();
printf("NUmber of Identifiers : %d\n", icount);
printf("NUmber of Constants : %d\n", ccount);
printf("NUmber of Operands : %d\n", ocount);
return 0;
}
