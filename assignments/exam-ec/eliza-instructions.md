# Final Exam

## Extra Credit: Eliza Lite

This optional assignment gives you practice with **Prolog**, including:
- pattern matching
- list processing
- recursion
- input/output
- interaction loops

---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Navigate to this folder:

```bash
cd assignments/exam-ec
```

6. Open and complete the problems in this file:

```text
eliza.pl
```

7. Save your changes

8. Start Prolog:

```bash
swipl
```

9. Load this file:

```prolog
[eliza].
```

10. Test your predicates and make sure your solution works for **all required test cases**

11. To quit:

```
CTRL + Z
```

---

## Requirements

At the top of your file, include:
- Your full name

In your code, include comments that:
- Explain what each predicate does
- Explain how your solution works

Your program must:
- use **recursion (no loops)**
- use **pattern matching**
- correctly implement all transformations

<br>

⚠️ Your program must **run without errors** and produce the **correct output** using **recursion (not iteration)**. If your program:
- does not run  
- runs but crashes  
- runs but produces incorrect output  

then it will receive **no credit**.

---

## Background

In 1966, **Joseph Weizenbaum (MIT)** created a program called *ELIZA*, one of the first programs to simulate conversation.

Despite using simple pattern matching, ELIZA created surprisingly realistic interactions.

In this assignment, you will build a **simplified version** of ELIZA in Prolog.

---

## Your Task

Write a Prolog program that:

1. Prompts the user for input  
2. Accepts a sentence as a **list of words**  
3. Transforms the sentence using simple rules  
4. Outputs a response  
5. Repeats this process **in an infinite loop**

---

## Program Behavior

Your program should follow this structure:

1. Display a prompt:

```
Ready>
```

2. Read input from the user (as a list):

```prolog
[i,feel,fine]
```

3. Transform the sentence using the rules below

4. Output a response:

```
Eliza: why do you feel fine
```

5. Repeat

---

## Transformation Rules

Apply the following transformations:

- Replace `you` → `i`
- Replace `i` → `why do you`
- Replace `are` → `am not`
- Replace `do` → `no,`
- Replace `portuguese` → `russian`

⚠️ Notes:
- Transform **each word in the list**
- Preserve the order of the sentence
- Some transformations produce **multiple words** (e.g., `i → why do you`)

---

## Required Examples

Your program must correctly handle:

| Input | Output |
|------|--------|
| `[i,feel,fine]` | `why do you feel fine` |
| `[you,are,a,computer]` | `i am not a computer` |
| `[do,you,speak,portuguese]` | `no, i speak russian` |

---

## Implementation Hints

- Repeat using **recursion**
- Use **recursion** to process the list
- Use **pattern matching** (`[H|T]`)
- You will likely need:
  - one predicate to **transform the list**
  - one predicate to **print the response nicely**

⚠️ Important:
- Do NOT print the list directly
- Output should be **words separated by spaces**

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
