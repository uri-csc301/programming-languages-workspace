# Week 3: Programming Language Implementation & SML

## Assignment 3: Language Systems & SML

In this assignment, you will:
- Translate high-level expressions into **assembly language**
- Write functions in **Standard ML (SML)**

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Navigate to:
   ```
   assignments/week-03-ls-sml/
   ```
3. Complete:
   - **Part 1: (Language Systems)** in this file (`a3-instructions.md`)
   - **Part 2 (SML)** in `a3.sml`
  
4. Commit your work when finished

---

# Part 1: Language Systems (Assembly Translation)

1. Go to **your repository** (not the template repo)
2. Navigate to:
   ```
   assignments/week-03-ls-sml/
   ```
3. Open ```a3-instructions.md``` and **edit it directly in GitHub** (click the <img width="25" height="30" alt="image" src="https://github.com/user-attachments/assets/1b84a2eb-d88c-43d3-995c-89b89e9f1428" />
 button in the top right corner)
5. Add your answers in the designated sections below
6. Click **Commit changes** when finished

---

## Target Assembly Language (Register-Based)

### Instructions

```text
load address, reg
add reg, reg, reg
sub reg, reg, reg
mul reg, reg, reg
store reg, address
```

Registers:
```text
r1, r2, r3
```

---

### Example

```
result := offset + (width * n)
```

```text
load width, r1
load n, r2
mul r1, r2, r1
load offset, r2
add r2, r1, r1
store r1, result
```

---

## Problem 1: Register-Based Translation

Translate the following using **as few instructions as possible**.

### (a)
```
area := length * width
```

```text
YOUR ANSWER HERE
```

---

### (b)
```
hypotenuse_squared := (a * a) + (b * b)
```

```text
YOUR ANSWER HERE
```

---

### (c)
```
cube := (x * x) * x
```

```text
YOUR ANSWER HERE
```

---

### (d)
```
final := ((a - abase) * (b - bbase)) * (c - cbase)
```

```text
YOUR ANSWER HERE
```

---

## Target Assembly Language (Stack-Based)

### Instructions

```text
push address
add
sub
mul
pop address
```

---

### Example

```
result := offset + (width * n)
```

```text
push offset
push width
push n
mul
add
pop result
```

---

## Problem 2: Stack-Based Translation

Translate the following using **as few instructions as possible**.

### (a)
```
net := gross - costs
```

```text
YOUR ANSWER HERE
```

---

### (b)
```
volume := (length * width) * height
```

```text
YOUR ANSWER HERE
```

---

### (c)
```
area := length * width
```

```text
YOUR ANSWER HERE
```

---

### (d)
```
hypotenuse_squared := (a * a) + (b * b)
```

```text
YOUR ANSWER HERE
```

---

### (e)
```
cube := (x * x) * x
```

```text
YOUR ANSWER HERE
```

---

### (f)
```
final := ((a - abase) * (b - bbase)) * (c - cbase)
```

```text
YOUR ANSWER HERE
```

---

# Part 2: Standard ML (SML)

1. Go to **your repository** (not the template repo)

2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Navigate to this folder:

```bash
cd assignments/week-03-ls-sml
```

6. Open the file:

```text
a3.sml
```

7. At the top of the file, include:
    - Your full name
  
8. Include comments in your code that:
    - Explain what your program does
    - Explain how your solution works
  
9. Write your function definitions in `a3.sml`

10. Start the SML interpreter:

```bash
sml
```

11. Load this file:

```sml
use "a3.sml";
```

12. Test your functions and make sure your solution works for **all required test cases**

13. To quit SML, press:

```text
CTRL + D
```

<br>

⚠️ Your program must **run without errors** and produce the **correct output** using **recursion (not iteration)**. If your program:
- does not run  
- runs but crashes  
- runs but produces incorrect output  

then it will receive **no credit**.

---

## Problems

Write the following functions:

1. `string -> string`  
   Returns `"Hello, Name!"` where `Name` is the given input

2. `second : 'a list -> 'a`  
   Returns the second element (doesn't need to behave well on lists with less than 2 elements)

3. `max3 : int * int * int -> int`  
   Returns the largest value

4. `permute : 'a list -> 'a list`  
   Swaps first two elements of the list (`[1,2,3,4] → [2,1,3,4]`, `[“a”,”b”,”c”] → [“b”,”a”,”c”]`)

5. `sqsum : int -> int`  
   Sum of squares from `0` to `n` (doesn't need to be defined for integer values less than 0)

6. `pow : real * int -> real`  
   Raises a real to an integer power (doesn't need to be defined for integer values less than 0)

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
