# Week 2: Programming Language Specification

## Self Assessment – Where Syntax Meets Semantics

The following problems are designed to reinforce your understanding of how **syntax (grammars)** and **semantics (meaning)** interact.

You will:
- Modify grammars using **precedence** and **associativity**
- Identify and explain **ambiguity**
- Rewrite grammars to make them **unambiguous**

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Guidelines

- Use proper BNF notation
- Be clear and consistent in your rules
- When asked to show ambiguity:
  - You must provide **two different parse trees** (or derivations) for the same string
- When removing ambiguity:
  - Ensure only **one valid parse tree** exists for each string

---

## Problem 1: Extending a Grammar

Start with the grammar:

```
<exp> ::= <exp> + <mulexp> | <mulexp>
<mulexp> ::= <mulexp> * <rootexp> | <rootexp>
<rootexp> ::= ( <exp> )
           | a | b | c
```

Modify this grammar step-by-step:

1. Add **subtraction (`-`)** and **division (`/`)** operators  
   - Follow standard precedence and associativity rules
  
```text
YOUR ANSWER HERE
```

2. Add a **left-associative operator `%`**  
   - Its precedence should be:
     ```
     +, -   (lowest)
     %      
     *, /   (highest)
     ```

```text
YOUR ANSWER HERE
```

3. Add a **right-associative operator `=`**  
   - It should have **lower precedence than all other operators**
  
```text
YOUR ANSWER HERE
```

---

## Problem 2: Ambiguity

Consider the grammar:

```
<pet> ::= <mammal> | <reptile>
<mammal> ::= cat | dog | <empty>
<reptile> ::= turtle | snake | <empty>
```

Show that this grammar is **ambiguous**.

```text
YOUR ANSWER HERE
```

### Hint

- Try finding a string that can be derived in **more than one way**
- Remember:
  - Ambiguity means **multiple parse trees for the same string**

---

## Problem 3: Removing Ambiguity

Using the grammar from Problem 2:

- Rewrite it so that it defines the **same language** but is **no longer ambiguous**

```text
YOUR ANSWER HERE
```

---

## Goal

These problems will help you:

- Understand how grammars influence meaning
- Recognize and resolve ambiguity
- Apply precedence and associativity correctly
