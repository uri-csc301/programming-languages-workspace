# Week 4: Types & Patterns

## Assignment 4: Types & Pattern Matching

In this assignment, you will apply your understanding of:
- Types
- Pattern matching
- Functional problem solving in Standard ML (SML)

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Navigate to:
   ```
   assignments/week-04-types-patterns/
   ```
3. Complete:
   - **Part 1 (Types)** in this file (`a4-instructions.md`)
   - **Part 2 (Pattern Matching)** in `a4.sml`
  
4. Commit your work when finished

---

# Part 1: Types

1. Go to **your repository** (not the template repo)
2. Navigate to:
   ```
   assignments/week-04-types-patterns/
   ```
3. Open ```a4-instructions.md``` and **edit it directly in GitHub** (click the <img width="25" height="30" alt="image" src="https://github.com/user-attachments/assets/1b84a2eb-d88c-43d3-995c-89b89e9f1428" />
 button in the top right corner)
5. Add your answers in the designated sections below
6. Click **Commit changes** when finished

---

### (a) ML Types

Give the ML type corresponding to each of the following sets:

```text
{true, false}
```

```text
YOUR ANSWER HERE
```

---

```text
{true, false} → {true, false}
```

```text
YOUR ANSWER HERE
```

---

```text
{(true, true), (true, false), (false, true), (false, false)}
```

```text
YOUR ANSWER HERE
```

---

### (b) Type Safety

Suppose there are three variables `X`, `Y`, and `Z` with these types:

```
X: integer divisible by 3  
Y: integer divisible by 12  
Z: integer
```

For each assignment below, determine whether a language system can tell **before execution** if the assignment is safe.

Briefly explain your reasoning.

---

```
X := Y
```

```text
YOUR ANSWER HERE
```

---

```
Z := X
```

```text
YOUR ANSWER HERE
```

---

```
X := Z
```

```text
YOUR ANSWER HERE
```

---

```
X := X + 3
```

```text
YOUR ANSWER HERE
```

---

```
X := X + Z
```

```text
YOUR ANSWER HERE
```

---

# Part 2: Pattern Matching

Complete these problems in:

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Navigate to this folder:

```bash
cd assignments/week-04-types-patterns
```

4. Open the file:

```text
a4.sml
```

## Requirements

At the top of your file, include:
- Your full name

In your code, include comments that:
- Explain what each function does
- Explain how your solution works

Your solutions must:
- Use **pattern matching**
- Use **recursion (no loops)**

<br>

⚠️ Your program must **run without errors** and produce the **correct output** using **recursion (not iteration)**. If your program:
- does not run  
- runs but crashes  
- runs but produces incorrect output  

then it will receive **no credit**.

---

## Running Your Code

Start SML:

```bash
sml
```

Load your file:

```sml
use "a4.sml";
```

Test your functions at the prompt.

Exit with:

```
CTRL + D
```

---

## Problem 1: `more`

Write a function:

```sml
int * int list -> int list
```

such that:

```
more(e, L)
```

returns a list of elements in `L` that are **strictly larger than `e`**.

You must use **pattern matching**.

---

## Problem 2: `quicksort`

Write a function:

```sml
int list -> int list
```

that sorts a list using **quicksort**.

Algorithm:
- Choose a pivot (typically the first element)
- Partition the rest of the list into:
  - elements less than the pivot
  - elements not less than the pivot
- Recursively sort the sublists
- Combine results

You must use **pattern matching**.

---

## Problem 3: `repeats`

Write a function:

```sml
''a list -> bool
```

such that:

```
repeats(L)
```

returns `true` if and only if the list `L` contains **two equal adjacent elements**.

You must use **pattern matching**.

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
