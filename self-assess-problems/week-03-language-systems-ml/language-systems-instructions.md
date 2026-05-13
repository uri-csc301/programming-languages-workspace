# Week 3: Programming Language Implementation & SML

## Self Assessment – Assembly Translation

These problems are designed to help you practice translating high-level assignment statements into a simple target assembly language.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Target Assembly Language

You have been given the following target assembly language for a compiler.

### Instructions

```text
load address, reg
add reg, reg, reg
sub reg, reg, reg
mul reg, reg, reg
store reg, address
```

### Registers

You may use three integer registers:

```text
r1, r2, r3
```

---

## Example

High-level assignment:

```text
result := offset + (width * n)
```

Possible translation:

```text
load width, r1
load n, r2
mul r1, r2, r1
load offset, r2
add r2, r1, r1
store r1, result
```

---

## Instructions

Using the assembly language above, translate each assignment statement below using **as few instructions as possible**.

---

## Problem 1

Translate:

```text
area := length * width
```

```text
YOUR ANSWER HERE
```

---

## Problem 2

Translate:

```text
hypotenuse_squared := (a * a) + (b * b)
```

```text
YOUR ANSWER HERE
```

---

## Problem 3

Translate:

```text
cube := (x * x) * x
```

```text
YOUR ANSWER HERE
```

---

## Problem 4

Translate:

```text
final := ((a - abase) * (b - bbase)) * (c - cbase)
```

```text
YOUR ANSWER HERE
```

---

## Goal

These problems will help you understand how a compiler can translate higher-level expressions into lower-level instructions.
