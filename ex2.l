%option noyywrap
%{
#include<stdio.h>
int flag = 0;
%}
%%
[ \t]+ 
and |
but |
or |
either |
neither {flag = 1;}
[a-zA-Z]+ ;
\n {return 0;}
%%
int main(){
printf("Enter a sentence : ");
yylex();
if(flag)
	printf("\nThe sentence is compound.\n");
else
	printf("\nThe sentence is simple.\n");
}
