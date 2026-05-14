(* Higher-Order Programming *)

(* Functions can be stored as values. *)
val roundDown = floor;
val roundUp = ceil;
val roundNearest = round;

(* Higher-order function:
   Takes a real number and a conversion function.
*)
fun genconv (x:real, f:real -> int) = f(x);

(* Examples:
   genconv (3.2, floor);
   genconv (3.2, ceil);
   genconv (3.2, round);
*)

(* Anonymous functions *)
val addOne = fn x => x + 1;
val triple = fn x => x * 3;

(* Examples:
   addOne 5;
   triple 4;
*)

(* Generic function application *)
fun apply (x, f) = f x;

(* Examples:
   apply (10, fn x => x + 2);
   apply ("hello", size);
*)

(* Curried addition *)
fun csum a = fn b => a + b;

(* Examples:
   csum 1 2;
   val addFive = csum 5;
   addFive 10;
*)

(* Curried function adding three numbers *)
fun cadd3 a = fn b => fn c => a + b + c;

(* Examples:
   cadd3 1 2 3;
   val addOneAndTwo = cadd3 1 2;
   addOneAndTwo 10;
*)
