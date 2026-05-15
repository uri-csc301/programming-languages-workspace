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

Load a file:

```prolog
[socrates].
```

To quit: 

```
CTRL + Z
```

---


## What Is Prolog?

Prolog = **Programming in Logic**

Instead of writing instructions, you:
- define **facts**
- define **rules**
- ask **queries**

Prolog is based on **first-order logic**, which extends propositional logic by allowing predicates and quantified variables.

---

## Facts

Facts are statements that are always true.

```prolog
male(phil).
female(betty).
```

---

## Queries

Ask questions using:

```prolog
?- male(phil).
```

Output:
```
true.
```

```prolog
?- female(phil).
```

Output:
```
false.
```

---

## Variables

Variables start with uppercase letters:

```prolog
?- female(X).
```

Prolog returns all values that satisfy the query.

---

## Takeaways

- Prolog programs = facts + rules  
- Execution = asking queries  
- Prolog tries to **prove things are true**
