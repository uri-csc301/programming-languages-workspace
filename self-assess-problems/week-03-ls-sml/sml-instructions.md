# Week 3: Programming Language Implementation & SML

## Self Assessment – Introduction to Standard ML

These practice problems are designed to reinforce your understanding of writing simple expressions and function definitions in **Standard ML (SML)**.

You may find it helpful to complete the **<a href="https://www3.cs.stonybrook.edu/~cram/sml.html">“Hello World”</a>** and **<a href="https://www3.cs.stonybrook.edu/~cram/sml.html">Tutorial One</a>** readings before attempting these problems. You only need to complete Tutorial One up to the **Types** section.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## How to Start

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Navigate to this folder:

```bash
cd self-assess-problems/week-03-ls-sml
```

6. Open and complete the problems in this file:

```text
intro.sml
```

7. Save your changes.
8. Start the SML interpreter:

```bash
sml
```

9. Load this file:

```sml
use "intro.sml";
```

10. Test your functions and make sure your solution works for **all required test cases**

```sml
cube 3;
cuber 2.0;
second [1,2,3];
```

11. To quit SML, press:

```text
CTRL + D
```

---

## Important Notes

- End each SML statement with a semicolon `;`
- Function definitions should go in `intro.sml`
- Function calls/tests can be typed at the SML prompt after loading the file
- Some functions do not need to handle invalid inputs unless stated

---

## Problem 1: `cube`

Write a function `cube` of type:

```sml
int -> int
```

that returns the cube of its parameter.

Example:

```sml
cube 3;
(* expected: 27 *)
```

---

## Problem 2: `cuber`

Write a function `cuber` of type:

```sml
real -> real
```

that returns the cube of its parameter.

Example:

```sml
cuber 2.0;
(* expected: 8.0 *)
```

---

## Problem 3: `second`

Write a function `second` of type:

```sml
'a list -> 'a
```

that returns the second element of a list.

Your function does not need to behave well on lists with fewer than two elements.

Example:

```sml
second [10,20,30];
(* expected: 20 *)
```

---

## Problem 4: `min3`

Write a function `min3` of type:

```sml
int * int * int -> int
```

that returns the smallest of three integers.

Example:

```sml
min3 (4, 2, 9);
(* expected: 2 *)
```

---

## Problem 5: `max3`

Write a function `max3` of type:

```sml
int * int * int -> int
```

that returns the largest of three integers.

Example:

```sml
max3 (4, 2, 9);
(* expected: 9 *)
```

---

## Problem 6: `sqsum`

Write a function `sqsum` of type:

```sml
int -> int
```

that takes a non-negative integer `n` and returns the sum of the squares of all integers from `0` through `n`.

Your function does not need to be defined for inputs less than `0`.

Example:

```sml
sqsum 3;
(* expected: 14 because 0^2 + 1^2 + 2^2 + 3^2 = 14 *)
```

---

## Problem 7: `pow`

Write a function `pow` of type:

```sml
real * int -> real
```

that raises a real number to a non-negative integer power.

Your function does not need to be defined for integer values less than `0`.

Example:

```sml
pow (2.0, 3);
(* expected: 8.0 *)
```

---

## Problem 8: `permute`

Write a function `permute` of type:

```sml
'a list -> 'a list
```

whose output list is the same as the input list, but with the first two elements swapped.

Your function does not need to behave well on lists with fewer than two elements.

Examples:

```sml
permute [1,2,3,4];
(* expected: [2,1,3,4] *)

permute ["a","b","c"];
(* expected: ["b","a","c"] *)
```

---

## Goal

These problems will help you practice:

- writing SML functions
- using tuples and lists
- understanding function types
- writing recursive functions
