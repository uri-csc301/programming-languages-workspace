# Week 5: Polymorphism & Higher-Order Programming

## Self Assessment – Higher-Order Functions

These practice problems are designed to reinforce your understanding of **higher-order programming** in Standard ML (SML).

You may find it helpful to complete **Yet more on functions**, **Tutorial Five**, **Common Recursive Patterns** and **Tutorial Six** of <a href="https://www3.cs.stonybrook.edu/~cram/sml.html">A Gentle Introduction to ML tutorial </a> before attempting these problems.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Navigate to this folder:

```bash
cd self-assess-problems/week-05-polymorphism-hop
```

6. Open and complete the problems in this file:

```text
hop.sml
```

7. Save your changes

8. Start the SML interpreter:

```bash
sml
```

9. Load this file:

```sml
use "hop.sml";
```

10. Test your functions and make sure your solution works for **all required test cases**

11. To quit SML, press:

```
CTRL + D
```

---

## Important Notes

- Use **higher-order functions** where appropriate, such as `map`, `foldr`, or `foldl`
- Use **anonymous functions** where helpful
- Use **curried functions** where required
- Function definitions should go in `hop.sml`
- Function calls/tests can be typed at the SML prompt after loading the file

---

## Problem 1: `il2rl`

Write a function `il2rl` of type:

```sml
int list -> real list
```

that takes a list of integers and returns a list of the same numbers converted to type `real`.

Example:

```sml
il2rl [1,2,3];
(* expected: [1.0,2.0,3.0] *)
```

---

## Problem 2: `ordList`

Write a function `ordList` of type:

```sml
char list -> int list
```

that takes a list of characters and returns a list of the integer codes of those characters.

Example:

```sml
ordList [#"A", #"b", #"C"];
(* expected: [65,98,67] *)
```

---

## Problem 3: `squarelist`

Write a function `squarelist` of type:

```sml
int list -> int list
```

that takes a list of integers and returns a list of the squares of those integers.

Example:

```sml
squarelist [1,2,3,4];
(* expected: [1,4,9,16] *)
```

---

## Problem 4: `multpairs`

Write a function `multpairs` of type:

```sml
(int * int) list -> int list
```

that takes a list of integer pairs and returns a list of the products of each pair.

Example:

```sml
multpairs [(1,2), (3,4)];
(* expected: [2,12] *)
```

---

## Problem 5: `inclist`

Write a curried function `inclist` of type:

```sml
int list -> int -> int list
```

that takes a list of integers and an integer increment, then returns the same list with the increment added to each value.

Example:

```sml
inclist [1,2,3,4] 10;
(* expected: [11,12,13,14] *)
```

---

## Problem 6: `hdmap`

Write a curried function `hdmap` of type:

```sml
(int -> int) -> int list -> int
```

that takes a function and a list of integers, then applies the function to the first element of the list.

If the list is empty, return `~1`.

Example:

```sml
hdmap (fn x => x + 1) [3,4];
(* expected: 4 *)
```

---

## Goal

These problems will help you practice:

- writing higher-order functions
- using functions as values
- applying `map`
- writing anonymous functions
- working with curried functions
- reasoning about function types
