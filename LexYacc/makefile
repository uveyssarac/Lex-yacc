lexyacc: lexyacc.y lexyacc.lex
	bison -d lexyacc.y
	flex  -o lex.yy.c lexyacc.lex
	gcc  -o lexyacc lex.yy.c y.tab.c -lfl -lm 