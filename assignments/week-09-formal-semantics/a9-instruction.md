# Week 9: Formal Semantics

## Assignment 9: Formal Semantics

This assignment gives you practice with:
- Prolog programming
- recursive predicates over lists
- extending a programming language
- defining **formal semantics using Prolog**

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Navigate to:
   ```
   assignments/week-09-formal-semantics
   ```
3. Complete:
   - **Part 1 (Prolog Predicates)** in `a9.pl`
   - **Part 2 (Language ONE)** in `language-one.pl`
  
4. Commit your work when finished

---

# Part 1: Prolog Predicates

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Navigate to this folder:

```bash
cd assignments/week-09-formal-semantics
```

6. Open and complete the problems in this file:

```text
a9.pl
```

7. Save your changes

8. Start Prolog:

```bash
swipl
```

9. Load this file:

```prolog
[a9].
```

10. Test your predicates and make sure your solution works for **all required test cases**

11. To quit:

```
CTRL + Z
```

---

## Requirements

At the top of your file, include:
- Your full name

Your predicates must:
- use **recursion**
- use **pattern matching**
- correctly succeed/fail as specified

Your program must:
- run without errors
- produce correct results for all test cases

<br>

⚠️ Your program must **run without errors** and produce the **correct output** using **recursion (not iteration)**. If your program:
- does not run  
- runs but crashes  
- runs but produces incorrect output  

then it will receive **no credit**.

---

## Problem 1: `mysquare/2`

Define:

```prolog
mysquare(Input, Output)
```

so that:
- `Output` is a list of the **squares** of elements in `Input`

### Test Cases

```prolog
?- mysquare([],X).
?- mysquare([0],X).
?- mysquare([1],X).
?- mysquare([0,1],X).
?- mysquare([0,1,2,3,4,5],X).
```

---

## Problem 2: `second2last/2`

Define:

```prolog
second2last(List, X)
```

so that:
- `X` is the **second-to-last element**
- the predicate **fails** if the list has fewer than 2 elements

Hint:
Use pattern matching to describe lists of length ≥ 2.

---

## Problem 3: `myfilter/3`

Define:

```prolog
myfilter(List, Value, Result)
```

so that:
- `Result` contains elements of `List` that are **strictly greater than Value**

Hint:
- Use `<` or `=<`
- Use **multiple rules** (include vs skip)

---

## Demonstration

For each predicate:
- run the required test cases
- verify correctness
- include queries in your submission

---

# Part 2: Language ONE (Formal Semantics)

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Navigate to this folder:

```bash
cd assignments/week-09-formal-semantics
```

6. Open and complete the problems in this file:

```text
language-one.pl
```

7. Save your changes

8. Start Prolog:

```bash
swipl
```

9. Load this file:

```prolog
[language-one].
```

10. Test your predicates and make sure your solution works for **all required test cases**

11. To quit:

```
CTRL + Z
```

---

## Requirements

At the top of your file, include:
- Your full name

In your code, include comments that:
- Explain what each predicate does
- Explain how your solution works

<br>

⚠️ Your program must **run without errors** and produce the **correct output** using **recursion (not iteration)**. If your program:
- does not run  
- runs but crashes  
- runs but produces incorrect output  

then it will receive **no credit**.

---

## Your Task

This part extends a programming language using Prolog.

You are given:
- a grammar for **Language ONE**
- an operational semantics interpreter (`val1`)

You will extend Language ONE to support **subtraction**.

---

## Step 1: Extend the Grammar

Add subtraction to the BNF grammar:

```
<exp> ::= ... | <exp> - <exp>
```

Include your updated grammar in your file.

---

## Step 2: Extend the Abstract Syntax

Represent subtraction as:

```prolog
minus(X,Y)
```

---

## Step 3: Extend the Operational Semantics

Modify the interpreter by adding:

```prolog
val1(minus(X,Y), Value) :-
    val1(X, VX),
    val1(Y, VY),
    Value is VX - VY.
```

---

## Step 4: Evaluate Expressions

Compute the values of:

```
3 - 1
4 - 2
3 * 2 - 3
3 * (2 - 3)
```

---

## Demonstration

Show that your interpreter works by running queries such as:

```prolog
?- val1(minus(const(3),const(1)), X).
?- val1(minus(times(const(3),const(2)), const(3)), X).
?- val1(times(const(3), minus(const(2),const(3))), X).
```

Include:
- the query
- Prolog’s output

---

## What You Are Learning

In this part, you are:

- extending a programming language
- defining semantics using rules
- building a simple interpreter

This is how real programming languages are defined.

---

## Saving & Submitting Your Work

You are expected to **commit your work regularly**.

### Option 1: Using the Terminal

```bash
git add .
git commit -m "Your descriptive message"
git push
```


### Option 2: Using the Source Control Panel

1. Click the **Source Control** icon (<img width="25" height="30" alt="image" src="https://github.com/user-attachments/assets/176ba15f-b5dd-4405-8765-029b4ec04d1e" />
)
2. Enter a message describing your changes
3. Click **Commit**
4. Click **Push**

You can also use **Commit & Push** (dropdown arrow button) and additional actions via the **... menu**.

---

## Submitting Your Assignment

- Make sure your work is **committed and pushed**
- Submit a **link to your private repository** on Brightspace
- Ensure teaching staff have access to your repository

---

## ⚠️ Academic Integrity

All work in this course must be **your own**.

You may NOT:
- Copy code from other students
- Use solutions from the Internet or repositories
- Use AI tools (e.g., ChatGPT, Copilot) unless explicitly allowed

If your work is flagged, you may be asked to:
- Explain your code
- Review your commit history
- Provide supporting materials (drafts, notes, etc.)

Refer to the **Academic Honesty page** in Brightspace (**Content → Getting Started**) for full details.
