# Week 7: Memory & Java

## What is an Exception?

An exception is an event that disrupts the normal flow of a program.

---

## Basic Example

```java
try {
    int x = 10 / 0;
} catch (Exception e) {
    System.out.println("Error occurred");
}
```

---

## Throwing an Exception

```java
throw new Exception("Something went wrong");
```

---

## Why Exceptions Matter

- Handle unexpected errors
- Prevent program crashes
- Separate normal logic from error handling

---

## Key Idea

When an exception occurs:
- The runtime system looks for a handler
- It moves up the call stack until it finds one

---

## Takeaways

- Exceptions change program flow
- They interact with the runtime stack
- They are part of Java’s execution model
