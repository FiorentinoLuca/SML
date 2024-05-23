(* set of IDs blocks = <-env- {IMenv}: *si noti che per la propagazione dello scoping
  x coEnvs y  <-> |x|env = |y|env       non è detto che siano blocchi disgiunti  *)
fun fatt x = if x=0 
  then 1
  else x*fatt(x-1);
fatt;
fatt 3;
(* it = (?,fatt,*fn[bytecodeOfTheBody],!!int->int!!) *)

val x = 3*3;
val it = x+2;
fun fatt (x) = it-2;
(*not(x=fatt)*);
x=fatt(4);

(* paradigma imperativo: quasi tutto è un' asseganzione non serve che
le procedure siano incapisci di modificare lo stato del processo. 
Ricordiamo che in C, quasi tutto è un espressione, tranne le procedure(succesioni [da eseguire come batch] di funzioni [implicitamente di tipo A->B] 
che hanno come tipo di ritorno void [ogni processo che invocherà la procedure sara un insieme di parti dello stato programmato in esecuzione 
per prima della attivazione della procedura, e alla fine di essa gli sottoinsiemi vengono processati transformando lo stato
la procedure associa ad ogni blocco, sottoinsieme dello stato, un unico dato che sarebbe il risultato del processo che impegno come risorse ]).
In C le assegnazzioni sono espressioni ma per esempio: le definizioni che sono fatte implicitamente o dichiarando
[locazione~espressione] <- [locazione~nome~espressione] *)
(* paradigma : tutto è un' espressione, si dilunga la esecuzione
mediante l'interpretazione del batch. Si limita a programmare un batch di tasks
(pocedure con valore di ritorno) che programmano integralmente l' esecuzione del programma
{ {[nome~espressione], ... | [nome~espressione] ...}, ... {[nome~espressione], ... | [nome~espressione] ...} } *)
(* forse cè qualcosa che non è un assgnazione, esso sarebbe la dichiariazione.
  la dichiarazione in generale non prevede nessuna definizione, e nel paradigma
  si poteva inizzializzare una variabile un unica volta nell blocco perche si
  faceva la definizione al momento di inizzializzarla *)
(* Inizzializzazioni (?,N,V,T) come assegnazioni per chi stiamo calcolando, chi ha dichiarato essere nostra funzione*)



