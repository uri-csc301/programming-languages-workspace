# Week 2: Programming Language Specification

## Self Assessment – Defining Program Syntax

The following are practice problems to reinforce your understanding of **grammars and Backus–Naur Form (BNF)**.

For each problem, write a grammar that defines the given language.

### Example

For:

> The set of all strings consisting of zero or more concatenated copies of the string `ab`

A correct answer is:

```
<S> ::= ab <S> | <empty>
```

There are often **multiple correct answers**, so focus on writing a grammar that correctly describes the language.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Guidelines

- Use proper BNF notation:
  - Non-terminals: `<S>`, `<A>`, etc.
  - Terminals: `a`, `b`, `,`, `[`, etc.
- Use `<empty>` to represent the empty string when needed
- Make sure your grammar generates **all valid strings and only valid strings**

---

## Problem 1

Write a grammar for:

> The set of all strings consisting of **one or more `a`s**

---

## Problem 2

Write a grammar for:

> The set of all strings consisting of **one or more `a`s**, each followed by a semicolon

Example strings:
```
a;
a;a;
a;a;a;
```

---

## Problem 3

Write a grammar for:

> The set of all strings consisting of **one or more `a`s**, separated by commas  
> (There should be no comma before the first or after the last.)

Example strings:
```
a
a,a
a,a,a
```

---

## Problem 4

Write a grammar for:

> The set of all strings consisting of:
> - one uppercase letter (A–Z), followed by
> - zero or more additional characters, each of which is either:
>   - an uppercase letter, or
>   - a digit (0–9)

Example strings:
```
A
Z9
B123
A1B2C3
```

---

## Problem 5

Write a grammar for:

> The set of all strings consisting of:
> - an opening bracket `[`
> - followed by a list of **one or more digits** separated by commas
> - followed by a closing bracket `]`

Example strings:
```
[1]
[1,2]
[3,4,5]
```

---

## Goal

These problems will help you:
- Understand how grammars define structure
- Practice writing valid BNF rules
- Prepare for assignments involving grammars and syntax
