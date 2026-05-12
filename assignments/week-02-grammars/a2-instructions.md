# Week 2: Programming Language Specification

## Assignment 2: Syntax & Semantics

In this assignment, you will:
- Write BNF grammars
- Modify grammars using **precedence and associativity**
- Identify and explain **ambiguity**

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Navigate to:
   ```
   assignments/week-02-grammars/
   ```
3. Open this file and **edit it directly in GitHub** (click the <img width="25" height="30" alt="image" src="https://github.com/user-attachments/assets/1b84a2eb-d88c-43d3-995c-89b89e9f1428" />
 button in the top right corner)
5. Add your answers in the designated sections below
6. Click **Commit changes** when finished

---

## General Guidelines

- Use proper BNF notation (`<S>`, `<exp>`, etc.)
- Use `<empty>` when needed
- Show **derivations** where requested (not just final answers)
- Ensure your grammar generates **only valid strings**

---

# Problem 1: Defining Program Syntax

### (a) One or more `a`s

Write a grammar:

> The set of all strings consisting of one or more instances of the letter a.

```text
YOUR ANSWER HERE
```

Show derivations for:
```
a
aa
aaa
```

```text
YOUR DERIVATIONS HERE
```

---

### (b) One or more `a`s with semicolons

Write a grammar:

> The set of all strings consisting of one or more instances of the letter a with a semicolon after each one.

```text
YOUR ANSWER HERE
```

Show derivations for:
```
a;
a;a;
a;a;a;
```

```text
YOUR DERIVATIONS HERE
```

---

### (c) Uppercase letters and digits

Write a grammar for:
> The set of all strings consisting of an uppercase letter followed by zero or more additional characters, each of which is either an uppercase letter or one of the digits 0 through 9.

```text
YOUR ANSWER HERE
```

Show derivations for:
```
A
AA
A1
AA1
A1A
```

```text
YOUR DERIVATIONS HERE
```

---

### (d) Bracketed list of digits

Write a grammar for:

> The set of all strings consisting of an open bracket (the symbol [ ) followed by a list of one or more digits separated by commas, followed by a closing bracket (the symbol ] ). Note that the digits are 0 through 9.

```text
YOUR ANSWER HERE
```

Show derivations for:
```
[0]
[0,1]
[0,1,2]
```

```text
YOUR DERIVATIONS HERE
```

---

# Problem 2: Where Syntax Meets Semantics

## Part A: Extending Grammar G1

Given:

```
G1:
<exp> ::= <exp> + <mulexp> | <mulexp>
<mulexp> ::= <mulexp> * <rootexp> | <rootexp>
<rootexp> ::= ( <exp> ) | a | b | c
```

---

### (a) Add subtraction (`-`)

Modify the grammar by adding the **subtraction operator (-)** with the customary precedence and associativity.

```text
YOUR ANSWER HERE
```

Show derivations for:
```
a + b - c
a - b + c
```

```text
YOUR DERIVATIONS HERE
```

---

### (b) Add division (`/`)

Modify the grammar by adding the **division operators (/)** with the customary precedence and associativity.

```text
YOUR ANSWER HERE
```

Show derivations for:
```
a * b / c
a / b * c
```

```text
YOUR DERIVATIONS HERE
```

---

### (c) Add equality (`==`)

Modify the  grammar by adding the **equality operator (==)** with:
- Lowest precedence
- Left associative

```text
YOUR ANSWER HERE
```

Show derivations for:
```
a + b == b
a == b == c
```

```text
YOUR DERIVATIONS HERE
```

---

### (d) Ambiguity Check

Is your modified grammar **ambiguous**? Why or why not?

Explain your answer:

```text
YOUR ANSWER HERE
```

---

## Part B: Grammar G2

Given:

```
G2:
<pet> ::= <mammal> | <reptile>
<mammal> ::= cat | dog | <empty>
<reptile> ::= turtle | snake | <empty>
```

---

### (a) Show that G2 is ambiguous

Provide a string that has **two different derivations or parse trees**:

```text
YOUR ANSWER HERE
```

---

### (b) Make the grammar unambiguous

Rewrite G2 so that it generates the same language but is not ambiguous:

```text
YOUR ANSWER HERE
```

---

## Saving Your Work

After completing the assignment:

1. Scroll to the top of the file
3. Click **Commit changes**
4. Add a message (e.g., "Completed Assignment 2")
5. Click **Commit changes**

---

## Submitting Your Assignment

- Make sure all answers are committed before submitting
- Submit a **link to your private repository** on Brightspace
- Ensure teaching staff have access to your repository


---

## ⚠️ Academic Integrity

All work in this course must be **your own**.

You may NOT:
- Copy from other students  
- Use solutions from the Internet  
- Use AI tools unless explicitly allowed  

If your work is flagged, you may be asked to:
- Explain your answers  
- Show your work and reasoning 
- Provide supporting materials (drafts, notes, etc.)

Refer to the **Academic Honesty page** in Brightspace (**Content → Getting Started**) for full details.
