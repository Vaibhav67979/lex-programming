%option noyywrap
%{
#include<stdio.h>
int flag = 0;
%}
%%
[ab]+abb {flag = 1;}
. |
\n {return 0;}
%%
int main(){
printf("Enter a number : ");
yylex();
if(flag)
	printf("\nValid\n");
else
	printf("\nInvalid\n");
return 0;
}
