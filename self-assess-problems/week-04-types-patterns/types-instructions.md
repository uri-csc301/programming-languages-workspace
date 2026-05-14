# Week 4: Types & SML

## Self Assessment – Types

These practice problems are designed to reinforce your understanding of **types**.

You may find it helpful to complete the **<a href="https://www3.cs.stonybrook.edu/~cram/sml.html">Types</a>** and **<a href="https://www3.cs.stonybrook.edu/~cram/sml.html">Tutorial Two</a>** readings before attempting these problems. You only need to complete Tutorial Two up to the **Type inference** section.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Problem 1: ML Types

Give the ML type corresponding to each of the following sets.

### (a)

```text
{true, false}
```

```text
YOUR ANSWER HERE
```

---

### (b)

```text
{true, false} → {true, false}
```

```text
YOUR ANSWER HERE
```

---

### (c)

```text
{(true, true), (true, false), (false, true), (false, false)}
```

```text
YOUR ANSWER HERE
```

---

## Problem 2: Type Safety

Suppose there are three variables `X`, `Y`, and `Z` with these types:

```text
X: integer divisible by 3
Y: integer divisible by 12
Z: integer
```

For each assignment below, answer whether a language system can tell **before running the program** whether the assignment is safe.

Briefly explain your reasoning.

---

### (a)

```text
X := Y
```

```text
YOUR ANSWER HERE
```

---

### (b)

```text
Z := X
```

```text
YOUR ANSWER HERE
```

---

### (c)

```text
X := Z
```

```text
YOUR ANSWER HERE
```

---

### (d)

```text
X := X + 3
```

```text
YOUR ANSWER HERE
```

---

### (e)

```text
X := X + Z
```

```text
YOUR ANSWER HERE
```

---

## Goal

These problems will help you practice:

- Describing types as sets of values
- Identifying function and tuple types
- Thinking about subtype/supertype relationships
- Reasoning about whether assignments are type safe
