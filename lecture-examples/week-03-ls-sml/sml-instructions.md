# Week 3: Programming Language Implementation & SML

This file will guide you through running and experimenting with **Standard ML (SML)** in your Codespace.

---

## How To Run Examples

- Go to **your repository** (not the template repo)
- Click <b>Code → Codespaces → Create Codespace</b>
- Open the terminal (e.g., ```bash```)
- Navigate to this folder (e.g., ```cd lecture-examples/week-03-language-systems-ml```)

---

## Getting Started

Open a terminal in Codespaces and run:

```bash
sml
```

You should see a prompt like:

```
-
```

This means the ML interpreter is ready.

---

## Running Code

In SML, every statement must end with a semicolon `;`

Example:

```sml
1234;
```

Output:
```
val it = 1234 : int
```

---

## Basic Expressions

```sml
~1 + 2 - 3;
```

`~` represents negative numbers in ML

---

## Conditionals

```sml
if 1 < 2 then #"x" else #"y";
```

---

## Type Conversion

ML does **not allow mixed types**:

```sml
3.0 * 2;   (* ERROR *)
```

Correct version:

```sml
3.0 * real(2);
```

---

## Variables

```sml
val x = 1 + 2 * floor(3.0);
x + 1;
```

---

## Tuples

```sml
val joe = (32, 185, "married", "pilot");

val circle = ((2.5, 3.6), 5.0);
```

Access elements:

```sml
val age = #1 joe;
val profession = #4 joe;

val radius = #2 circle;
val x = #1 (#1 circle);
```

---

## Lists

```sml
val nums = [1, 2, 3];
```

Empty list:

```sml
[];
```

---

## List Operations

### Head (first element)

```sml
hd(nums);
```

### Tail (rest of list)

```sml
tl(nums);
```

### Concatenation

```sml
[1,2] @ [3,4];
```

### Cons operator

```sml
1 :: [2,3];
```

---

## Functions

Define a function:

```sml
fun add2 (a, b) = a + b;
```

Call it:

```sml
add2(1, 2);
```

---

## Recursion Example

### Sum of a list

```sml
fun listsum (L:int list) =
    if null(L) then 0
    else hd(L) + listsum(tl(L));
```

---

### Length of a list

```sml
fun listlength (L) =
    if null(L) then 0
    else 1 + listlength(tl(L));
```

---

### Reverse a list

```sml
fun reverse (L) =
    if null(L) then []
    else reverse(tl(L)) @ [hd(L)];
```

---

## Try It Yourself

Run:

```sml
val x = ["hello"] @ ["there"];
val nums = [1,2,3];
hd(nums);
tl(nums);
```

---

## Takeaways

- ML is a **functional language**
- Strong type system (no mixing types)
- Recursion is a core concept
- Lists and functions are fundamental
