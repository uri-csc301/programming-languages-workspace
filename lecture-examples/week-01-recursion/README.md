# Week 1: Programming Languages & Recursion

This folder contains example implementations of the factorial function across different programming paradigms.

## Examples Included

- **Imperative (C)**  
  Uses assignment and iteration

- **Functional (SML)**  
  Uses recursion and single valued variables

- **Logic (Prolog)**  
  Uses rules that specify the problem solution

- **Object-Oriented (Java)**  
  Bundles data with the allowed operations 

## Learning Goal

Compare how different programming paradigms approach solving the same problem.

## How To Run Examples

- Go to your copy of the repository
- Click <b>Code → Codespaces → Create Codespace</b>
- Wait for setup (1–2 minutes first time)
- Open terminal and navigate to this folder (e.g., ```cd lecture-examples/week-01-recursion```)

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
To quit, type ```CTRL+Z``` (Windows) / ```CTRL+D``` (Unix) and press ```ENTER/RETURN``` key

### Prolog
```bash
swipl logic_factorial.pl
```
Then:
```prolog
fact(5, F).
```
To quit, type ```CTRL+Z``` (Windows) / ```CTRL+D``` (Unix) and press ```ENTER/RETURN``` key

### Java
```bash
javac oop_factorial.java
java Main
```

Run each program and answer:

- What is similar across all implementations?
- What is different?
- Which feels most natural to you and why?
