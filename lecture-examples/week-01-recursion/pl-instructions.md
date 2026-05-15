# Week 1: Programming Languages & Recursion

This folder contains example implementations of the factorial function across different programming paradigms.

### Examples Included

- **Imperative (C)**  
  Uses assignment and iteration

- **Functional (SML)**  
  Uses recursion and single valued variables

- **Logic (Prolog)**  
  Uses rules that specify the problem solution

- **Object-Oriented (Java)**  
  Bundles data with the allowed operations 

### Learning Goal

Compare how different programming paradigms approach solving the same problem.

---

## How To Run Examples Using Codespaces

- Go to **your repository** (not the template repo)
- Click **Code → Codespaces → Create Codespace**
- Wait for setup (1–2 minutes first time)
- Open the terminal (`bash`)
  - ⚠️ NOT GitHub Codespace Configuration (may appear temporarily but switch to `bash`)
 
- Navigate to this folder:

```bash
cd lecture-examples/week-01-recursion
```

---

### C

Compile a C file:

```bash
gcc imperative_factorial.c -o fact
```

Run the program:

```bash
./fact
```

---

### Standard ML (SML)

Start SML:

```bash
sml
```

Load a file:

```sml
use "functional_factorial.sml";
```

Call a function:

```sml
fact 5;
```

To quit: 

```
CTRL + D
```

---

### Prolog

Start Prolog:

```bash
swipl
```

Load a file:

```prolog
[logic_factorial].
```

Call a function:

```prolog
fact(5, F).
```

To quit: 

```
CTRL + Z
```

---

### Java

Compile a Java file:

```bash
javac oop_factorial.java
```

Run the program:

```bash
java Main
```

---

## Reflect

Run each program and answer:

- What is similar across all implementations?
- What is different?
- Which feels most natural to you and why?
