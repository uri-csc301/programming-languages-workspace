(* map, foldr, and foldl *)

(* map applies a function to every element in a list. *)
val plusTwo = map (fn x => x + 2) [1,2,3];

val negatives = map ~ [1,2,3];

val tupleSums = map (fn (a,b) => a + b) [(1,2),(3,4)];

(* Partial evaluation with map *)
val listinc = map (fn x => x + 1);

(* Example:
   listinc [1,2,3];
*)

(* foldr folds from the right. *)
val foldrSum = foldr (fn (a,b) => a + b) 2 [1,2,3];

(* foldl folds from the left. *)
val foldlSum = foldl (fn (a,b) => a + b) 2 [1,2,3];

(* foldr and foldl can differ when the operation is not commutative. *)
val foldrString = foldr (fn (a,b) => a ^ b) "ef" ["ab","cd"];

val foldlString = foldl (fn (a,b) => a ^ b) "ef" ["ab","cd"];

(* Curried recursive filter *)
fun filterc [] e = []
  | filterc (x::xs) e =
        if x < e then x :: filterc xs e
        else filterc xs e;

(* Examples:
   filterc [1,5,2,8,3] 4;
   filterc [10,20,30] 25;
*)
