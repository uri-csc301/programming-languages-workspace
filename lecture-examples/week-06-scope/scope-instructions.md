# Week 6: Scope

This file will guide you through key concepts in:

- Scope
- Blocks and nested blocks
- Variable shadowing
- Namespaces

---

## What is Scope?

**Definition:**  
A *definition* is anything that establishes a possible binding to a name.  

**Scope** is a programming language tool used to **limit the visibility of definitions**.

---

## Why Scope Matters

Without scope rules, all variables would exist in a **global space**, which leads to:

- name conflicts  
- unintended overwrites  
- difficult debugging  

Example idea (from early BASIC):

- global variable `A`
- local variable `A` inside a function

Which one are you using?

---

## Namespaces

A **namespace** is a region of a program where:

- names are defined  
- names must be **unique within that region**

The most common namespace is a **block**.

---

# Blocks

## Definition

A **block** is a language construct that:

- contains definitions  
- defines where those definitions are valid  

---

## Example (ML)

```sml
let
  val q = 10
in
  q + 5
end;
```

`q` only exists **inside the block**

---

# Nested Blocks

Blocks can be **nested inside each other**.

---

## Example (ML)

```sml
let
  val n = 1
in
  let
    val n = 2
  in
    n
  end
end;
```

---

## What is the result?

The result is:

```
2
```

✔ The **inner definition overrides the outer one**  
✔ This is called **shadowing**

---

# Shadowing

When a variable in an inner scope has the same name as one in an outer scope:

- the inner one **hides (shadows)** the outer one  

---

## Try It Yourself

Run this in SML:

```sml
let
  val x = 5
in
  let
    val x = 10
  in
    x
  end
end;
```

---

# Implicit Blocks

Some constructs create blocks **implicitly** (without `let...in...end`).

Example:

```sml
fun add (a, b) = a + b;
```

The function definition itself creates a **scope/block**

---

# Namespaces (Advanced)

---

## Labeled Namespaces

Some languages allow you to **name a namespace**.

Example (Java idea):

```java
MyInt.min
```

Access definitions using a label (namespace name) 

---

## Primitive Namespaces

Modern languages typically separate:

- variable names  
- type names  

This avoids confusion.

---

## Example (ML)

```sml
val int = 3;
```

Here:
- `int` is used as a **variable name**
- `int` is also a **type name**

ML can distinguish them because they are in **different namespaces** :contentReference[oaicite:6]{index=6}  

---

# Try It Yourself

Run:

```sml
val int = 3;

fun f int = int * int;

f 3;
```

---

## What happens?

- `int` (variable) is used as a parameter name  
- `int` (type) is still recognized separately  

Result:

```
9
```

---

# Key Takeaways

- Scope controls **where variables are visible**
- Blocks define **regions of scope**
- Nested blocks allow **variable shadowing**
- Namespaces prevent **naming conflicts**
- Modern languages separate **type names and variable names**
