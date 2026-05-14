# Week 7: Memory & Java

This file will help you understand how **parameters are passed to methods in Java**.

---

## What Are Parameters?

Parameters are variables that receive values when a method is called.

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

## Key Idea

**Java is always pass-by-value**

This means:
- A **copy of the value** is passed into the method
- Changes inside the method do **not affect the original variable**

---

# Example 1: Primitive Types

```java
public class Main {
    public static void change(int x) {
        x = 100;
    }

    public static void main(String[] args) {
        int a = 10;
        change(a);
        System.out.println(a);
    }
}
```

## What is printed?

Output:

```
10
```

### Why?

- `a` is **copied** into `x`
- Changing `x` does NOT change `a`

---

# Example 2: Objects

```java
class Box {
    int value;
}

public class Main {
    public static void change(Box b) {
        b.value = 100;
    }

    public static void main(String[] args) {
        Box box = new Box();
        box.value = 10;

        change(box);

        System.out.println(box.value);
    }
}
```

## What is printed?

Output:

```
100
```

---

## Why is this different?

Even though Java is **pass-by-value**:

- The value being copied is a **reference to the object**
- Both `box` and `b` refer to the **same object in memory**

So:
- Changing the object → visible outside the method ✔  
- Reassigning the reference → NOT visible ❌  

---

# 🔁 Example 3: Reassigning an Object

```java
public static void change(Box b) {
    b = new Box();
    b.value = 100;
}
```

## What happens now?

Output:

```
10
```

### Why?

- The reference is copied
- Reassigning `b` does NOT change the original `box`

---

# Summary

| Case | What is Passed | Can It Change Outside? |
|------|---------------|------------------------|
| Primitive (int, double) | Value | ❌ No |
| Object | Reference (copied) | ✔ Yes (object contents only) |
| Object reassignment | New reference | ❌ No |

---

# Try It Yourself

```java
public static void test(int x) {
    x = x + 5;
}

public static void main(String[] args) {
    int a = 20;
    test(a);
    System.out.println(a);
}
```

---

## What is the output?

Think about:
- What gets copied?
- What gets modified?

---

# Key Takeaways

- Java is **always pass-by-value**
- Primitives → values are copied
- Objects → references are copied
- You can modify an object, but not the original reference

This concept is critical for understanding:
- method calls
- memory (stack vs heap)
- object behavior
