(* Pattern Matching in ML *)

(* Factorial without pattern matching *)
fun fact_if x =
    if x = 0 then 1
    else x * fact_if(x - 1);

(* Factorial with pattern matching *)
fun fact 0 = 1
  | fact n = n * fact(n - 1);

(* Sum of a list using pattern matching *)
fun sumlist [] = 0
  | sumlist (x::xs) = x + sumlist(xs);

(* Reverse a list using pattern matching *)
fun reverse [] = []
  | reverse (x::xs) = reverse(xs) @ [x];

(* Pattern matching with tuples inside a list *)
fun get1stAge ((age, weight, mstat, profession)::rest) = age;

(* Anonymous variable *)
fun zeroOrNot 0 = "zero"
  | zeroOrNot _ = "non-zero";

(* Pattern matching in a val definition *)
val (age, weight, mstat, profession) = (38, 185, "married", "pilot");

(* Member function *)
fun member (e, nil) = false
  | member (e, x::xs) =
        if e = x then true
        else member(e, xs);

(* Less-than filter *)
fun less (e, nil) = nil
  | less (e, x::xs) =
        if x < e then x :: less(e, xs)
        else less(e, xs);
