(*INT*)
1; 3; ~2; ~4;   0xff; ~0x32;
1 + 3; ~2 * ~4;   0xff = ~0x32; ~4 mod 0xff;
(*WORD(unisgned integers)*) 
0w1; 0wxf;          (*~0w4;*)

(*REAL*)    (*aritmetica a precisione ilimitata*)
Real.!= (4.5,3.7);  4.5 > 3.7;
3.14; ~2.0; 0.1E6;   (*2.0 = 2.0;*) (*Real.==(~4, ~4.0);*)
3.14 + 2.0; 0.0/0.0; Real.==(21E1, 210.0);  

(*STRING*)
"\nabc"; "1 2 3\n"; "\nabc" ^ "1 2 3\n"; 
size "1 2 3\n"; "1 2 3\n" <> "1 2 3\n";

(*CHAR*)
#"a"; #"\n"; #"\163"; (*#"\~1"*);
ord (#"@"); chr(64); (*chr(~1)*);

(*BOOL*)
true; false; not true = false; false = false; 
not false; true andalso true; false orelse true;


(*ESEMPI*)
val x = real(ord #"@") + 2.2 * real(size "123");
floor(x) - 20 + Word.toInt 0w5; (*BaseLibraries*)
val a = 0.0/a*10E~20; val b = real(0)/0.1E~300;
val a = Math.sqrt(~(real (Word.toInt(0wx3fffffff))));
Real.==(a, b);