(* Types in SML *)

(* Primitive types *)
val x = 5;
val y = 3.14;
val word = "hello";
val flag = true;

(* Tuples *)
val tuple1 = ("two", true, 2);
val nestedTuple = ((1, 2), (3, 4, 5));

(* Lists *)
val intList = [1, 2, 3];
val nestedList = [[1, 2], [3, 4, 5]];
val emptyLists = [[], [], []];

(* This list is invalid because lists must contain one type. *)
(* Uncomment to test the error: *)
(* val badList = ["two", true, 2]; *)

(* Function types *)
fun myfun (x:real):int = round(x);
val foo = myfun;

val roundedValue = foo(3.4);

(* Type alias / constructed type *)
type person = int * int * string * string;

val joe : person = (38, 185, "married", "pilot");
