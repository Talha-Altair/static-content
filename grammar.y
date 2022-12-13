%{
  #include<stdio.h>
  #include<stdlib.h>
  #include"y.tab.h"
  void yyerror(char *s);
  int yylex();
%}

%tokenZero one

%%

  stmt:S;
  S:S A|A;
  A:Zero Zero | One One;

%%

int main()
{
  yyparse();
  printf("Accepted\n");
  exit(0);
}

void yyerror(char *s)
{
 printf("Not accepted\n");
 exit(0);
}
