# Week 8: Prolog

## Self Assessment – Prolog

These practice problems are designed to reinforce your understanding of **Prolog**, including:
- facts
- rules
- queries
- logical reasoning

You may find it helpful to complete the first five topics of this [Prolog tutorial](https://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/) before attempting these problems.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Getting Started

- Go to **your repository** (not the template repo)
- Click **Code → Codespaces → Create Codespace**
- Wait for setup
- Open the terminal (`bash`)
- Navigate to this folder:

```bash
cd self-assess-problems/week-08-prolog
```

- Start Prolog:

```bash
swipl
```

- Load a file:

```prolog
[family].
```

- To quit:

```
CTRL + Z
```

---

## Family Relationships

You are given the base predicates:

- `parent(X,Y)` → X is a parent of Y  
- `female(X)` → X is female  
- `male(X)` → X is male  

These predicates are defined in the example program.

---

## Your Task

Define the following predicates using **rules**.

Your definitions should be general and work with any valid set of `parent`, `female`, and `male` facts.

---

### (a) `mother`

Define a predicate:

```prolog
mother(X,Y)
```

so that X is the **mother** of Y.

```prolog
% YOUR ANSWER HERE
```

---

### (b) `father`

Define a predicate:

```prolog
father(X,Y)
```

so that X is the **father** of Y.

```prolog
% YOUR ANSWER HERE
```

---

### (c) `sister`

Define a predicate:

```prolog
sister(X,Y)
```

so that X is the **sister** of Y.

⚠️ Be careful:
- X and Y must share a parent  
- X must be female  
- A person cannot be their own sister  

```prolog
% YOUR ANSWER HERE
```

---

### (d) `grandson`

Define a predicate:

```prolog
grandson(X,Y)
```

so that X is the **grandson** of Y.

```prolog
% YOUR ANSWER HERE
```

---

## Testing Your Code

Try queries like:

```prolog
?- mother(pam, bob).
?- father(tom, liz).
?- sister(X, ann).
?- grandson(X, pam).
```

---

## Important Notes

- Use **rules** (`:-`) to define relationships  
- Use **variables** (capital letters)  
- Prolog will try to **prove your query is true**  
- Multiple conditions are separated by commas (AND)

---

## Goal

This exercise will help you practice:

- writing Prolog rules  
- thinking in terms of relationships  
- using logical inference instead of step-by-step instructions  
- working with variables and queries  
