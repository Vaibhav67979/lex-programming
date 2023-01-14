%option noyywrap
%{
#include<stdio.h>
int vcount = 0;
int ccount = 0;
%}
%%
[ \t]+ ;
[a,e,i,o,u,A,E,I,O,U] {vcount++;}
[a-zA-Z] {ccount++;}
. |
\n {return 0;}
%%
int main(){
printf("Enter an expression : ");
yylex();
printf("NUmber of Vowels : %d\n", vcount);
printf("NUmber of Consonants : %d\n", ccount);
return 0;
}
