# Week 4: Types & Patterns

This file will guide you through running and experimenting with **types** and **pattern matching** in Standard ML (SML).

---

## How To Run Examples

- Go to **your repository** (not the template repo)
- Click <b>Code → Codespaces → Create Codespace</b>
- Open the terminal (e.g., ```bash```)
- Navigate to this folder:

```bash
cd lecture-examples/week-04-types-patterns
```

---

## Getting Started

Start the ML interpreter:

```bash
sml
```

Load example files:

```sml
use "type-examples.sml";
use "pattern-examples.sml";
use "merge-sort.sml";
```

---

# Types in Programming Languages

A **type** is a set of values.

Example:
- `int` → all integers  
- `real` → all floating-point numbers  

---

## Primitive vs Constructed Types

### Primitive Types
- Built into the language
- Cannot be defined by the programmer  

Examples:
```sml
val x = 5;        (* int *)
val y = 3.14;     (* real *)
```

---

### Constructed Types
- Created by combining other types  

Examples:
```sml
val t = (1, "two");        (* tuple *)
val L = [1,2,3];           (* list *)
```

---

## Type Examples

Try these in SML:

```sml
("two", true, 2);
((1,2),(3,4,5));
[[1,2],[3,4,5]];
[[],[],[]];
```

Lists must contain elements of the **same type**  
This is why the following is invalid:

```sml
["two", true, 2];   (* ERROR *)
```

---

# Function Types

Functions also have types.

Example:
```sml
real -> int
```

This represents all functions that take a `real` and return an `int`.

---

## Functions as Values

```sml
fun myfun (x:real):int = round(x);
val foo = myfun;

foo(3.4);
```

---

# Pattern Matching

Pattern matching allows you to define functions based on the **structure of input values**.

Instead of:
```sml
fun fact(x) =
    if x = 0 then 1
    else x * fact(x-1);
```

We write:
```sml
fun fact 0 = 1
  | fact n = n * fact(n-1);
```

This is cleaner and more expressive.  

---

## Valid Patterns

Examples:
```sml
1
(a,b)
[2,3]
x::xs
```

Invalid patterns:
```sml
1 + a
f(x)
```

---

# Pattern Matching on Lists

### Sum of a list

```sml
fun sumlist [] = 0
  | sumlist (x::xs) = x + sumlist(xs);
```

---

### Reverse a list

```sml
fun reverse [] = []
  | reverse (x::xs) = reverse(xs) @ [x];
```

---

# Pattern Matching with Tuples

```sml
fun get1stAge ((age, weight, mstat, profession)::rest) = age;
```

This extracts values directly from structured data.

---

# Anonymous Variables

If a value is not needed:

```sml
fun f 0 = "zero"
  | f _ = "non-zero";
```

`_` means “ignore this value.”

---

# Pattern Matching with let

```sml
fun halve [] = ([], [])
  | halve [a] = ([a], [])
  | halve (a::b::rest) =
      let
        val (x,y) = halve(rest)
      in
        (a::x, b::y)
      end;
```

---

# Merge Example

```sml
fun merge ([], ys) = ys
  | merge (xs, []) = xs
  | merge (x::xs, y::ys) =
      if x < y then x :: merge(xs, y::ys)
      else y :: merge(x::xs, ys);
```

---

# Merge Sort

```sml
fun mergeSort [] = []
  | mergeSort [a] = [a]
  | mergeSort L =
      let
        val (x,y) = halve L
      in
        merge(mergeSort x, mergeSort y)
      end;
```

---

## Try It Yourself

```sml
mergeSort [4,3,2,1];
mergeSort [4,2,3,1,5,3,6];
```

---

# Takeaways

- A **type** is a set of values
- Types help detect errors early
- Functions have types too
- Pattern matching simplifies recursion
- Functional programming relies heavily on structure
