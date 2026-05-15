# Week 7: Memory & Java

## Assignment 7: Memory, Parameters & Translation

In this assignment, you will:

- analyze how different **parameter passing methods** affect program behavior  
- modify a **Java parser** to generate instructions for a stack-based machine  

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Navigate to:

```
assignments/week-07-memory/
```

3. Complete:
- **Part 1 (Parameters)** in this file (`a7-instructions.md`)
- **Part 2 (Translator Program)** in `CalcParser.java`

4. Commit your work when finished

---

# Part 1: Parameter Passing

1. Go to **your repository** (not the template repo)
2. Navigate to:
   ```
   assignments/week-07-memory/
   ```
3. Open ```a7-instructions.md``` and **edit it directly in GitHub** (click the <img width="25" height="30" alt="image" src="https://github.com/user-attachments/assets/1b84a2eb-d88c-43d3-995c-89b89e9f1428" />
 button in the top right corner)
4. Add your answers in the designated sections below
5. Click **Commit changes** when finished

---

## Problem

Consider the following Java code fragment:

```java
int[] A = new int[2];
A[0] = 0;
A[1] = 2;

f(A[0], A[A[0]]);
```

Function `f` is defined as:

```java
void f(int x, int y) { 
    x = 1;  
    y = 3; 
}
```

---

## Your Task

For each parameter passing method, determine the **final values in array `A`** after the call to `f`.

---

### (a) Pass-by-Value

```text
YOUR ANSWER HERE
```

---

### (b) Pass-by-Reference

```text
YOUR ANSWER HERE
```

---

### (c) Pass-by-Value-Result (Copy-In / Copy-Out)

```text
YOUR ANSWER HERE
```

---

# Part 2: Translator Program

Complete these problems in:

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Navigate to this folder:

```bash
cd assignments/week-07-memory
```

4. Open the file:

```text
CalcDemo.java
```

---

## Running Your Program

In Codespaces:

```bash
javac CalcDemo.java
java CalcDemo
```

You will be prompted:

```
Enter an expression:
```

Example inputs:
```
1+2*3
(1+2)*3
```

---

## Understanding the Code

You are given three files:

- `CalcDemo.java` → handles user input/output
- `CalcLexer.java` → tokenizes the input 
- `CalcParser.java` → parses and evaluates expressions

⚠️ You should ONLY modify:
```
CalcParser.java
```

---

## Your Task

Modify the parser so that it **generates instructions** instead of directly evaluating the expression.

Modify `CalcParser.java` so that:

- Instead of computing a numeric result
- It produces a **sequence of stack machine instructions**

---

## Example

### Input:
```
1+2*3
```

### Output:
```
push 1.0
push 2.0
push 3.0
multiply
add
7.0
```

---

### Input:
```
(1+2)*3
```

### Output:
```
push 1.0
push 2.0
add
push 3.0
multiply
9.0
```

---

## Key Idea

Right now, the parser:

- computes values like:
```java
result += parseMulexp();
```

You will instead:
- build a **string of instructions**
- follow the **same parsing structure**

---

## ⚠️ Requirements

- Do NOT modify:
  - `CalcDemo.java`
  - `CalcLexer.java`

- Modify ONLY:
  - `CalcParser.java`

- Your solution must:
  - preserve correct **operator precedence**
  - preserve correct **associativity**
  - generate instructions in the correct order

- Use:
```java
System.out.println(...)
```

- You do NOT need to use any GUI code

---

## Hint

Focus on these methods:

- `parseExpression()`
- `parseMulexp()`
- `parseRootexp()`

Instead of returning numbers, think about:
- building instruction sequences step by step

---

## Saving & Submitting Your Work

You are expected to **commit your work regularly**.

### Option 1: Using the Terminal

```bash
git add .
git commit -m "Your descriptive message"
git push
```


### Option 2: Using the Source Control Panel

1. Click the **Source Control** icon (<img width="25" height="30" alt="image" src="https://github.com/user-attachments/assets/176ba15f-b5dd-4405-8765-029b4ec04d1e" />
)
2. Enter a message describing your changes
3. Click **Commit**
4. Click **Push**

You can also use **Commit & Push** (dropdown arrow button) and additional actions via the **... menu**.

---

## Submitting Your Assignment

- Make sure your work is **committed and pushed**
- Submit a **link to your private repository** on Brightspace
- Ensure teaching staff have access to your repository

---

## ⚠️ Academic Integrity

All work in this course must be **your own**.

You may NOT:
- Copy code from other students
- Use solutions from the Internet or repositories
- Use AI tools (e.g., ChatGPT, Copilot) unless explicitly allowed

If your work is flagged, you may be asked to:
- Explain your code
- Review your commit history
- Provide supporting materials (drafts, notes, etc.)

Refer to the **Academic Honesty page** in Brightspace (**Content → Getting Started**) for full details.
