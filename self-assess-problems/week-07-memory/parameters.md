# Week 7: Memory & Java

## Self Assessment – Parameters

These practice problems are designed to reinforce your understanding of **parameter passing** and how different mechanisms affect program behavior.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Problem: Parameter Passing

Consider the following Java code fragment:

```java
int[] A = new int[2];
A[0] = 0;
A[1] = 2;

f(A[0], A[A[0]]);
```

Function `f` is defined as:

```java
void f(int x, int y) { 
    x = 1; 
    y = 3; 
}
```

---

## Before You Begin

Evaluate the function call carefully:

```java
f(A[0], A[A[0]])
```

- What is the value of `A[0]`?
- What index does `A[A[0]]` refer to?

Determine the actual values passed into `f` before analyzing the parameter passing methods.

---

## Your Task

For each of the following parameter passing methods, determine the **final values in the array `A`** after the call to `f`.

There may be more than one correct answer depending on how the parameters are interpreted.

---

### (a) Pass-by-Value

```text
YOUR ANSWER HERE
```

---

### (b) Pass-by-Reference

```text
YOUR ANSWER HERE
```

---

### (c) Pass-by-Value-Result (Copy-In / Copy-Out)

```text
YOUR ANSWER HERE
```

---

## Important Notes

- Java actually uses **pass-by-value**, but this problem asks you to consider **other parameter passing models** as well.
- Focus on:
  - what is passed into the function
  - whether changes affect the original array
  - when those changes take effect

---

## Goal

This problem will help you practice:

- evaluating expressions before function calls  
- understanding how parameters are passed  
- comparing different parameter passing mechanisms  
- reasoning about how memory is affected by function calls  
