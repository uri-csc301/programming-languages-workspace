# Week 2: Programming Language Specification

This file contains examples and guided practice to help you understand how **grammars define the syntax of a language**.

---

## Key Idea

Programming languages have two main components:

- **Syntax** → what programs look like (structure)
- **Semantics** → what programs mean (behavior)

Grammars are used to define syntax precisely and unambiguously. :contentReference[oaicite:0]{index=0}

---

## Example 1: Simple English Grammar

```
<Sentence> ::= <Noun-Phrase> <Verb> <Noun-Phrase>
<Noun-Phrase> ::= <Article> <Noun>
<Verb> ::= loves | hates | eats
<Article> ::= a | the
<Noun> ::= dog | cat | rat
```

### Concepts

- **Start symbol**: `<Sentence>`
- **Non-terminals**: `<Sentence>`, `<Noun-Phrase>`, etc.
- **Terminals**: `dog`, `cat`, `eats`, `the`, etc.

---

### Try It Yourself

Determine whether each string belongs to the language defined by this grammar (L(G)):

1. `the cat eats a rat`
2. `the dog chases the cat`
3. `a dog loves the cat`

Ask yourself:
- Can you derive the string using the grammar rules?
- If yes → it belongs to L(G)
- If not → it does NOT belong to L(G)

---

### Key Insight

A string belongs to a language **if you can construct a valid derivation (or parse tree)** from the grammar.

---

## Example 2: Expression Grammar

```
<Exp> ::= <Exp> + <Exp>
        | <Exp> * <Exp>
        | ( <Exp> )
        | a
        | b
        | c
```

---

### Try It Yourself

Determine whether each string belongs to L(G):

1. `a`
2. `a + b`
3. `a + b * c`
4. `(a + b) * c`
5. `c(a + b)`
6. `b++`

---

### Think About

- Does every symbol appear in the grammar?
- Is the structure valid according to the rules?

---

## Ambiguity

A grammar is **ambiguous** if a string can have **more than one parse tree**.

Example:

```
a + b * c
```

This can be interpreted as:
- `(a + b) * c`
- `a + (b * c)`

These represent **different computations**, which creates ambiguity.

---

## Resolving Ambiguity

We can fix ambiguity by encoding:

- **Operator precedence** (e.g., `*` before `+`)
- **Associativity** (e.g., left-to-right for `+`)

Example:

```
<E> ::= <E> + <T> | <T>
<T> ::= <T> * <P> | <P>
<P> ::= a | b | c
```

This grammar ensures:
- `*` happens before `+`
- Expressions are evaluated consistently

---

## Why This Matters

Grammars are used by:
- Compilers
- Interpreters
- Programming language designers

They ensure that programs are:
- Well-formed
- Unambiguous
- Interpretable by machines

---

## Practice Problems

### 1. Grammar Design

Write a grammar for:

> The set of all strings consisting of zero or more repetitions of `"ab"`

---

### 2. Digits Grammar

Write a grammar for:

> The set of all strings consisting of one or more digits (0–9)

---

## Takeaways

- Grammars define the **structure** of a language
- A string belongs to a language if it can be **derived**
- Ambiguity occurs when multiple parse trees exist
- We resolve ambiguity using **precedence and associativity**
