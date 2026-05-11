# Week 1: Programming Languages & Recursion

This folder contains example implementations of the factorial function across different programming paradigms.

## Examples Included

- **Imperative (C)**  
  Uses assignment and iteration (`while` loop)

- **Functional (SML)**  
  Uses recursion and no mutable state

- **Logic (Prolog)**  
  Uses rules and pattern matching

- **Object-Oriented (Java)**  
  Encapsulates data and behavior in an object

## Learning Goal

Compare how different programming paradigms approach solving the same problem.

## How To Run Examples

- Click <b>Code → Codespaces → Create Codespace</b>
- Wait for setup (1–2 minutes first time)
- Open terminal and navigate to this folder

### C
```bash
gcc imperative_factorial.c -o fact
./fact
```

### SML
```bash
sml
```
Then:
```sml
use "functional_factorial.sml";
fact 5;
```

### Prolog
```bash
swipl logic_factorial.pl
```
Then:
```prolog
?- fact(5, F).
```

### Java
```bash
javac oop_factorial.java
java Main
```

Run each program and answer:

- What is similar across all implementations?
- What is different?
- Which feels most natural to you and why?
