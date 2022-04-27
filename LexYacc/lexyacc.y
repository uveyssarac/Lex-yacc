%{
  #include<stdio.h>
  #include<math.h>

%}
  
%token NUMBER
  
%left '+' '-'
  
%left '*' '/' '%'
  
%right '^'

  
%%
  
ArithmeticExpression: E{
  
         printf(": %d\n", $$);
  
         return 0;
  
        };

 E:E'+'E {$$=$1+$3;}
  
 |E'-'E {$$=$1-$3;}
  
 |E'*'E {$$=$1*$3;}
  
 |E'/'E {$$=$1/$3;}
  
 |E'%'E {$$=$1%$3;}

 |E'^'E {$$=pow($1,$3);}
  
 | NUMBER {$$=$1;}
  
 ;
  
%%

void main(){
   yyparse();
}
  
void yyerror(){
   printf("\nHatalı Giriş\n"); 
}