# Week 7: Memory & Java

This file introduces different **parameter passing mechanisms** used in programming languages and explains how **Java fits into this model**.

---

## What Are Parameters?

Parameters are variables that receive values when a method or function is called.

Example:

```java
public static int add(int a, int b) {
    return a + b;
}
```

Call:

```java
add(2, 3);
```

- `a` receives `2`
- `b` receives `3`

---

## Why Parameter Passing Matters

Parameter passing determines:
- what gets passed into a function
- whether changes affect the original variables
- how memory is used during execution

---

# Parameter Passing Methods

---

## 1. Pass-by-Value

A **copy of the value** is passed to the function.

- Changes inside the function do NOT affect the original variable

### Example (Java)

```java
public static void change(int x) {
    x = 100;
}
```

```java
int a = 10;
change(a);
System.out.println(a);
```

Output:
```
10
```

✔ Java uses pass-by-value

---

## 2. Pass-by-Reference

The **actual variable (memory location)** is passed.

- Changes inside the function DO affect the original variable

### Example (Conceptual)

```text
change(x):
    x = 100

a = 10
change(a)
print(a)
```

Output:
```
100
```

✔ Used in languages like C++ (with references)

---

## 3. Pass-by-Value-Result (Copy-In / Copy-Out)

Two steps:
1. Copy value into the function (copy-in)
2. Copy value back to the original variable (copy-out)

### Behavior:
- Changes inside the function DO affect the original
- But only after the function finishes

### Conceptual Example:

```text
a = 10

function change(x):
    x = 100

change(a)

print(a)
```

Output:
```
100
```

Difference from pass-by-reference:
- Happens **after execution**, not during

---

## 4. Pass-by-Name (Advanced)

The parameter behaves like a **textual substitution** of the argument.

- Expression is re-evaluated each time it is used

### Conceptual Example:

```text
function f(x):
    print(x)
    print(x)

f(a + 1)
```

`a + 1` is evaluated each time

✔ Rare in modern languages  
✔ Historically used in Algol

---

# How Java Fits In

## Key Rule

**Java is always pass-by-value**

---

## Primitive Types

```java
int x = 10;
change(x);
```

- Value is copied
- Original variable is unchanged

---

## Objects

```java
Box b = new Box();
change(b);
```

- The **reference is copied**
- Both variables refer to the same object

### Important Distinction:

| Operation | Effect |
|----------|--------|
| Modify object | ✔ Visible outside |
| Reassign reference | ❌ Not visible |

---

## Example

```java
public static void change(Box b) {
    b.value = 100;
}
```

✔ Modifies original object

---

```java
public static void change(Box b) {
    b = new Box();
    b.value = 100;
}
```

❌ Does NOT affect original object

---

# Summary Table

| Method | What is Passed | Can Modify Original? |
|-------|----------------|----------------------|
| Pass-by-Value | Copy of value | ❌ No |
| Pass-by-Reference | Memory location | ✔ Yes |
| Pass-by-Value-Result | Copy in/out | ✔ Yes (after call) |
| Pass-by-Name | Expression | Depends |
| Java (Actual) | Copy of value (reference for objects) | ✔ Only object contents |

---

# Key Takeaways

- Parameter passing is a **language design decision**
- Different languages behave differently
- Java uses **pass-by-value only**
- Objects can still appear to behave like pass-by-reference
- Understanding this is critical for:
  - debugging
  - memory reasoning
  - predicting program behavior
