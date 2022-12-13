%{
   /* Definition section */
  #include "y.tab.h"
 %}
  
/* Rule Section */
 %%
0 {return 0;}
1 {return 1;}
\n {return NL;}
.  {return yytext[0];}
%%
  
int yywrap() 
 { 
  return 1; 
 } 
