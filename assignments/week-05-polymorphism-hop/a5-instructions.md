# Week 5: Polymorphism & Higher-Order Programming

## Assignment 5: Polymorphism & Higher-Order Functions

In this assignment, you will apply your understanding of:
- Higher-order functions
- Recursion
- Functional problem solving in Standard ML (SML)
- Built-in functional patterns (`map`, `foldr`, `foldl`)

---

## Getting Started

1. Go to **your repository** (not the template repo)

2. Click **Code → Codespaces → Create Codespace**
3. Navigate to this folder:

```bash
cd assignments/week-05-polymorphism-hop
```

4. Open the file:

```text
a5.sml
```

5. Complete the problems in this file  
6. Commit your work when finished

---

## Requirements

At the top of your file, include:
- Your full name

In your code, include comments that:
- Explain what each function does
- Explain how your solution works

Your solutions must:
- Use **recursion** where appropriate
- Use **higher-order functions** where required
- Follow all problem-specific constraints

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
use "a5.sml";
```

Test your functions at the prompt.

Exit with:

```
CTRL + D
```

---

# Problems

---

## Problem 1: `sqsum`

Write a function:

```sml
int list -> int
```

that takes a list of integers and returns the **sum of the squares** of those integers.

Example:

```sml
sqsum [1,2,3,4];
(* expected: 30 *)
```

---

## Problem 2: `dupList`

Write a function:

```sml
'a list -> 'a list
```

that returns a list where each element appears **twice in a row**.

Example:

```sml
dupList [1,2,3];
(* expected: [1,1,2,2,3,3] *)
```

```sml
dupList [];
(* expected: [] *)
```

### ⚠️ Important

- Do **NOT** use explicit recursion  
- You **MUST** use one of the `fold` functions (`foldr` or `foldl`)  
- Do **NOT** define additional helper functions  

---

## Problem 3: `mymap`

Define a **curried** function:

```sml
('a -> 'b) -> 'a list -> 'b list
```

that behaves like the built-in `map` function.

Example:

```sml
mymap (fn x => x + 1) [1,2,3];
(* expected: [2,3,4] *)
```

### ⚠️ Important

- You are **NOT allowed** to use the built-in `map`
- You **may define helper functions** if needed
- You must implement the behavior using recursion

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
