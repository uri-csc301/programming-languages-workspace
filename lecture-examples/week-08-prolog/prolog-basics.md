# Week 8: A First Look at Prolog

This file introduces the basics of **Prolog**, a logic programming language.

---

## What is Prolog?

Prolog = **Programming in Logic**

Instead of writing instructions, you:
- define **facts**
- define **rules**
- ask **queries**

---

## Logic as a Programming Language

Prolog is based on **first-order logic**, which extends propositional logic by allowing predicates and quantified variables.

---

## How To Run Prolog

1. Go to **your repository** (not the template repo)
2. Click <b>Code → Codespaces → Create Codespace</b>
3. Wait for setup 
4. Open the terminal (e.g., ```bash```)
5. Navigate to this folder:

```bash
cd lecture-examples/week-08-prolog
```

Run Prolog:

```bash
swipl
```

Load a file:

```prolog
?- [socrates].
```

---

## Facts

Facts are statements that are always true.

Example:

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

## Key Takeaways

- Prolog programs = facts + rules  
- Execution = asking queries  
- Prolog tries to **prove things are true**
