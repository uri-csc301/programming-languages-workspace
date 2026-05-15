# Week 10: Formal Semantics

## Self Assessment – Final Prolog Practice

These practice problems are designed to reinforce your understanding of **Prolog**, including:

- pattern matching
- recursion over lists
- writing predicates with multiple rules
- reasoning about success/failure of queries

You may find it helpful to complete the last two topics of this [Prolog tutorial](https://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/) before attempting these problems.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Navigate to this folder:

```bash
cd self-assess-problems/week-09-formal-semantics
```

6. Start Prolog:

```bash
swipl
```

7. Load this file:

```prolog
[predicates].
```

8. To quit:

```
CTRL + Z
```

---

## Important Notes

- Use **pattern matching** (e.g., `[H|T]`)
- Use **recursion** (no loops)
- Define predicates using **multiple rules where appropriate**
- Make sure your predicates:
  - succeed when they should
  - fail when they should

---

## Problem 1: `firstPair/1`

Define a predicate:

```prolog
firstPair(X)
```

that succeeds if and only if:
- `X` is a list with **at least two elements**
- the **first two elements are equal**

---

## Problem 2: `del3/2`

Define:

```prolog
del3(X,Y)
```

so that:
- `Y` is the same as `X` but with the **third element removed**
- the predicate should **fail** if `X` has fewer than three elements

---

## Problem 3: `halve/3`

Define:

```prolog
halve(List, X, Y)
```

so that:
- `List` is split into two lists `X` and `Y`
- elements are distributed **alternatingly** (like in ML)

---

## Problem 4: `myflip/2`

Define:

```prolog
myflip(X,Y)
```

so that:
- `Y` is the **reverse** of list `X`

⚠️ Restrictions:
- Do NOT use `reverse/2`

---

## Problem 5: `mysquare/2`

Define:

```prolog
mysquare(Input, Output)
```

so that:
- `Output` is a list containing the **squares** of each element in `Input`

---

## Problem 6: `second2last/2`

Define:

```prolog
second2last(List, X)
```

so that:
- `X` is the **second-to-last element** of `List`
- the predicate should **fail** if the list has fewer than 2 elements

Hint:
Use pattern matching to describe the structure of a list with at least two elements.

---

## Problem 7: `myfilter/3`

Define:

```prolog
myfilter(List, Value, Result)
```

so that:
- `Result` contains all elements of `List` that are **strictly greater than `Value`**

Example:

```prolog
?- myfilter([1,2,3,4], 2, X).
X = [3,4]
```

Hint:
- Use comparison predicates like `<` and `=<`
- Use **multiple rules** (one for including, one for skipping)

---

## Suggested Testing

After defining each predicate, test with your own examples.

Examples:

```prolog
?- firstPair([a,a,b]).
?- del3([1,2,3,4], X).
?- halve([1,2,3,4], X, Y).
?- myflip([a,b,c], X).
?- mysquare([1,2,3], X).
?- second2last([1,2,3,4], X).
?- myfilter([1,2,3,4], 2, X).
```

---

## Goal

These problems will help you practice:

- thinking declaratively (what vs how)
- recursion over lists
- pattern matching in Prolog
- designing predicates that correctly succeed and fail
- preparing for **formal semantics and interpreters**
