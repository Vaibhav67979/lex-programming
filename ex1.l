%option noyywrap

%{
#include<stdio.h>
int count = 0;
%}
%%
[ \t]+
is |
was |
am |
are |
were |
being |
do |
did |
does {printf("\n %s is a verb.", yytext);}
[a-zA-z]+ {printf("\n %s is not a verb.", yytext);}
. | \n ;
%%
int main(){
printf("Enter a sentence : ");
yylex();
}
