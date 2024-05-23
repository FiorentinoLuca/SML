use "reverse.sml"; (*load "file" from pwd*)
use "factorial.sml";
val reversedFactorial = reverse [factorial(1), factorial(2), factorial(3), factorial(4)];
(*use "main.sml";*)