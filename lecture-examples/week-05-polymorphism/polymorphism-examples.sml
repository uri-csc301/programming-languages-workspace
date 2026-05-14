(* Polymorphism Examples *)

(* Parametric polymorphism *)
fun same (x, y) = (x = y);

(* Examples:
   same (1, 1);
   same ("hello", "hello");
   same (true, false);
*)

(* Identity function *)
fun identity x = x;

(* Examples:
   identity 5;
   identity "ML";
   identity [1,2,3];
*)

(* Function that ignores its input *)
fun alwaysOne x = 1;

(* Examples:
   alwaysOne "anything";
   alwaysOne 42;
*)

(* Function that returns the first item in a tuple *)
fun first (x, y) = x;

(* Examples:
   first (1, "hello");
   first (true, 99);
*)

(* Function that applies another function to 1 *)
fun applyToOne g = g 1;

(* Examples:
   applyToOne (fn x => x + 5);
   applyToOne (fn x => x * 3);
*)
