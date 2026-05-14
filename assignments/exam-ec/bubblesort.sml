(* Midterm Extra Credit – Bubble Sort *)
(* Name: YOUR NAME HERE *)

(* ========================= *)
(* Helper: issorted          *)
(* ========================= *)

(* Checks if a list is sorted *)
fun issorted [] = true  
  | issorted [x] = true 
  | issorted (x::y::t) = x <= y andalso issorted (y::t);


(* ========================= *)
(* Helper: bubble            *)
(* ========================= *)

(* Perform one pass of bubble sort.
   This should move the largest element toward the end of the list.

   int list -> int list
*)

(* fun bubble L = ... *)


(* ========================= *)
(* Main Function: bubbleSort *)
(* ========================= *)

(* int list -> int list *)

(* Use recursion and pattern matching.
   Continue applying bubble until the list is sorted.

   You may find issorted helpful.
*)

(* fun bubbleSort L = ... *)


(* ========================= *)
(* Optional Testing          *)
(* ========================= *)

(*
bubbleSort [];
bubbleSort [1];
bubbleSort [1,2,3];
bubbleSort [3,1,2];
bubbleSort [5,4,3,2,1];
*)
