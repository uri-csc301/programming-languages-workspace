(* Merge Sort in SML *)

(* Divide a list into two nearly equal parts *)
fun halve [] = ([], [])
  | halve [a] = ([a], [])
  | halve (a::b::rest) =
        let
            val (x, y) = halve(rest)
        in
            (a::x, b::y)
        end;

(* Merge two sorted lists *)
fun merge ([], ys) = ys
  | merge (xs, []) = xs
  | merge (x::xs, y::ys) =
        if x < y then x :: merge(xs, y::ys)
        else y :: merge(x::xs, ys);

(* Merge sort *)
fun mergeSort [] = []
  | mergeSort [a] = [a]
  | mergeSort theList =
        let
            val (x, y) = halve theList
        in
            merge(mergeSort x, mergeSort y)
        end;

(* Try:
   mergeSort [4,3,2,1];
   mergeSort [4,2,3,1,5,3,6];
*)
