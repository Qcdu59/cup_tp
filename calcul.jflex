import java_cup.runtime.*;

%%


%cup
%unicode
%line

BLANK=[ \t]
NUM=[:digit:]+
TIMES="*"
PLUS="+"
MINUS="-"
PB="("
PE=")"

%%
{NUM}	{System.out.println("NUM "); return new Symbol(sym.NUM);}
{TIMES}	{System.out.println("TIMES "); return new Symbol(sym.TIMES);}
{PLUS}	{System.out.println("PLUS "); return new Symbol(sym.PLUS);}
{MINUS}	{System.out.println("MINUS "); return new Symbol(sym.MINUS);}
{PB}	{System.out.println("PB "); return new Symbol(sym.PB);}
{PE}	{System.out.println("PE "); return new Symbol(sym.PE);}
{BLANK} {;}
"\n" 	{;}
.		{System.out.println(yytext());}
