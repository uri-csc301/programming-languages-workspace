# Week 1: Programming Languages & Recursion

## Assignment 1: Recursion
Recursion can be challenging at first, but it is an essential concept in this course.  
In this assignment, you will complete a set of problems designed to reinforce your understanding of **recursive thinking**.

---

## Instructions

You may use one of the following languages:
- **Java**
- **Python**
- **C**
- **C++**

The following languages are also available but not required:
- **SML**
- **Prolog**

⚠️ **All problems must be solved using recursion.** Do not use `for` or `while` loops unless explicitly stated.

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Click <b>Code → Codespaces → Create Codespace</b>
3. Wait for setup (1–2 minutes first time)
4. Open the terminal (`bash`)
   - ⚠️ NOT GitHub Codespace Configuration (may appear temporarily but switch to `bash`)
   
5. Navigate to this folder:

```bash
cd assignments/week-01-recursion
```

6. Create your own files in this folder (e.g., `sum.py`, `reverse.cpp`)
7. At the top of each file, include:
   - Your full name
8. Include comments in your code that:
   - Explain what your program does
   - Explain how your recursive solution works (base case + recursive case)
9. Run and test your program using the appropriate command (see below)
10. Verify your solution works for **all required test cases**

<br>

⚠️ Your program must **run without errors** and produce the **correct output** using **recursion (not iteration)**. If your program:
- does not run  
- runs but crashes  
- runs but produces incorrect output  

then it will receive **no credit**.

---

## Running Your Code

### Python
```bash
python3 filename.py
```

### Java
```bash
javac FileName.java
java ClassName
```

### C
```bash
gcc filename.c -o program
./program
```

### C++
```bash
g++ filename.cpp -o program
./program
```

### SML
```bash
sml
```

### Prolog
```bash
swipl program.pl
```

---

## Problem 1: Recursive Sum (1 to n)

Write a recursive function that computes:

```
1 + 2 + 3 + ... + n
```

Test your program with:

```
n = 10 → 55
```
---

## Problem 2: Sum of a List

Write a recursive function that computes the sum of a list.

Example:
```
[1, 2, 3] → 6
```

### Hint
- The sum of a list is:
  ```
  first element + sum(rest of list)
  ```

---

## Problem 3: Recursive Traversal

Create a list containing the integers `0` through `9`.

Then recursively traverse the list and print each value:

```
0 1 2 3 4 5 6 7 8 9
```

⚠️ Do not use loops. You do **not** need to create the list recursively.

---

## Problem 4: Reverse a List

Write a recursive function that reverses a list.

Example:
```
[1, 2, 3, 4, 5] → [5, 4, 3, 2, 1]
```

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
