# Week 5: Polymorphism & Higher-Order Programming

This file will guide you through key concepts in:
- Polymorphism
- Higher-order programming
- Anonymous functions
- Currying
- Built-in functional patterns in ML

---

## How To Run Examples

- Go to **your repository** (not the template repo)
- Click **Code → Codespaces → Create Codespace**
- Open the terminal (e.g., `bash`)
- Navigate to this folder:

```bash
cd lecture-examples/week-05-polymorphism-hop
```

---

## Getting Started

Start the ML interpreter:

```bash
sml
```

Load example files:

```sml
use "polymorphism-examples.sml";
use "higher-order.sml";
use "map-fold-examples.sml";
```

---

# Part 1: Polymorphism

## What is Polymorphism?

A function or operator is **polymorphic** if it can have **multiple types**. 

---

## Types of Polymorphism

### 1. Overloading

An operator or function has **multiple definitions with different types**.

Example (Java):

```java
"abc" + "def"   // String + String
3 + 5           // int + int
```

ML does **not support overloading**.

---

### 2. Parameter Coercion

Implicit type conversion (e.g., `int → double`).

Example:

```java
double x;
x = 2;   // int is coerced to double
```

ML does **not perform type coercion**. 

---

### 3. Parametric Polymorphism

Functions that work for **many types using type variables**.

Example (ML):

```sml
fun f (x, y) = (x = y);
```

Type:

```sml
'a * 'a -> bool
```

---

### 4. Subtype Polymorphism

Occurs when types have **subtype relationships**.

Example (Java):
- `TeaCup` is a subtype of `Cup`
- Can pass `TeaCup` where `Cup` is expected 

ML does **not support subtyping**.

---

# Part 2: Higher-Order Programming

## Functions as Values

Functions can be:
- stored in variables
- passed as arguments
- returned from other functions

Example:

```sml
val x = floor;
x 3.7;
```

---

## Higher-Order Functions

Functions that:
- take functions as parameters
- or return functions

Example:

```sml
fun genconv (x:real, f:real -> int) = f(x);

genconv (3.2, floor);
genconv (3.2, ceil);
```

---

# Anonymous Functions

Sometimes we create small functions on the fly.

Syntax:

```sml
fn x => x + 1
```

Example:

```sml
(fn x => x + 1) 5;
```

---

# Currying

Functions can be written as a chain of single-argument functions.

Example:

```sml
fun csum a = fn b => a + b;
```

Call:

```sml
csum 1 2;
```

---

## Partial Evaluation

```sml
val addOne = csum 1;
addOne 5;
```

---

# Built-in Functional Patterns

---

## map

Applies a function to each element in a list.

```sml
map (fn x => x + 2) [1,2,3];
```

Output:

```text
[3,4,5]
```

---

## foldr

Reduces a list to a single value (right to left).

```sml
foldr (fn (a,b) => a + b) 0 [1,2,3];
```

---

## foldl

Reduces a list (left to right).

```sml
foldl (fn (a,b) => a + b) 0 [1,2,3];
```

---

## foldr vs foldl

They differ when operations are **not commutative**.

---

# Partial Evaluation with map

```sml
val listinc = map (fn x => x + 1);
listinc [1,2,3];
```

---

# Recursion with Curried Functions

Example:

```sml
fun filterc [] e = []
  | filterc (x::xs) e =
      if x < e then x :: filterc xs e
      else filterc xs e;
```

---

# Try It Yourself

```sml
map (fn x => x * 2) [1,2,3];

foldr (fn (a,b) => a + b) 0 [1,2,3];

val addTwo = fn x => x + 2;
addTwo 10;
```

---

# Takeaways

- Polymorphism = functions with multiple possible types
- ML primarily uses **parametric polymorphism**
- Functions are **first-class values**
- Higher-order programming is central to ML
- `map`, `foldr`, and `foldl` are powerful abstraction tools
