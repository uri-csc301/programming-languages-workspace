# Week 8: Prolog

## Self Assessment – More Prolog

These practice problems are designed to reinforce your understanding of **Prolog**, including:
- lists
- pattern matching
- recursion
- rule-based problem solving

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
cd self-assess-problems/week-08-prolog
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

## **Question 1: `firstPair/1`**

Define a predicate:

```prolog
firstPair(X)
```

that succeeds if and only if `X` is a list with **at least two elements**, and the **first element is equal to the second element**.

#### Example:

```prolog
?- firstPair([a,a,b]).
true.

?- firstPair([a,b,c]).
false.
```

---

## **Question 2: `del3/2`**

Define a predicate:

```prolog
del3(X,Y)
```

so that:
- `Y` is the same as `X`, but with the **third element removed**
- the predicate **fails** if `X` has fewer than three elements

#### Example:

```prolog
?- del3([a,b,c,d], X).
X = [a,b,d].
```

---

## **Question 3: `halve/3`**

Design a predicate:

```prolog
halve(List, L1, L2)
```

that:
- takes a list as input  
- returns two lists `L1` and `L2`  
- each containing **half of the elements** of the original list  

#### Notes:
- You may assume the list has an **even number of elements**
- The order of elements should be preserved

#### Example:

```prolog
?- halve([a,b,c,d], X, Y).
X = [a,b],
Y = [c,d].
```

---

## **Question 4: `myflip/2`**

Define a predicate:

```prolog
myflip(X,Y)
```

so that:
- `Y` is the **reverse** of list `X`

#### Example:

```prolog
?- myflip([a,b,c], X).
X = [c,b,a].
```

#### ⚠️ Restrictions:
- You may NOT use built-in predicates like `reverse/2`
- You must use **recursion and pattern matching**

---

## Important Notes

- Lists are written as:
```prolog
[a,b,c]
```

- Use pattern matching:
```prolog
[H|T]
```

- Recursion is essential for working with lists

- Prolog solves problems by:
  - **matching patterns**
  - **applying rules**
  - **backtracking when needed**

---

## Goal

These problems will help you practice:

- writing recursive predicates  
- working with lists using pattern matching  
- thinking declaratively (what is true vs how to compute it)  
- building more complex logic from simple rules  
