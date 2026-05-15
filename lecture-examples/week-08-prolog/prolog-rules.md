# Week 8: Prolog

This file introduces the basics of **Prolog**, a logic programming language.

---

## How To Run Examples Using Codespaces

- Go to **your repository** (not the template repo)
- Click **Code → Codespaces → Create Codespace**
- Wait for setup
- Open the terminal (`bash`)
  - ⚠️ NOT GitHub Codespace Configuration (may appear temporarily but switch to `bash`)
 
- Navigate to this folder:

```bash
cd lecture-examples/week-08-prolog
```

---

### Prolog

Start Prolog:

```bash
swipl
```

Load the files:

```prolog
[socrates].
[family].
```

To quit: 

```
CTRL + Z
```

---

## Rules

Rules define relationships between facts.

General form:

```prolog
head :- body.
```

Meaning:
head is true if body is true

---

## Socrates

From your file:

```prolog
mortal(X) :- human(X).
human(socrates).
```

---

## Query

```prolog
?- mortal(socrates).
```

Prolog proves this using **logical inference (modus ponens)** 

---

## Family Example

From your program:

```prolog
female(pam).
male(tom).
parent(pam,bob).
```

---

## Add Rule

```prolog
mother(X,Y) :- female(X), parent(X,Y).
```

---

## Query

```prolog
?- mother(pam,bob).
```

---

## Takeaways

- Rules = logical implications  
- Prolog uses **unification + backtracking**  
- You are defining relationships, not steps
