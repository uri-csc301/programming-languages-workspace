# Midterm Exam

## Extra Credit: Bubble Sort

This is an optional extra credit assignment. You may earn **up to 10 additional points** on your midterm exam by implementing **bubble sort in Standard ML (SML)**.

---

## Getting Started

1. Go to **your repository** (not the template repo)

2. Click **Code → Codespaces → Create Codespace**
3. Navigate to this folder:

```bash
cd assignments/exam-ec
```

4. Open the file:

```text
bubblesort.sml
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
- Use **pattern matching**
- Use **recursion (no loops)**
- Use **local function definitions** where appropriate
- Correctly implement the **bubble sort algorithm**

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
use "bubblesort.sml";
```

Test your functions at the prompt.

Exit with:

```
CTRL + D
```

---

# Bubble Sort

## Your Task

Implement the **bubble sort** algorithm in Standard ML using:

- pattern matching  
- recursion  
- (recommended) local helper functions  

A helpful function is provided below:

```sml
(* Checks if a list is sorted *)
fun issorted [] = true  
  | issorted [x] = true 
  | issorted (x::y::t) = x <= y andalso issorted (y::t);
```

---

## Testing Your Solution

Test your implementation on the following inputs:

```text
bubbleSort []          → []
bubbleSort [1]         → [1]
bubbleSort [1,2,3]     → [1,2,3]
bubbleSort [3,1,2]     → [1,2,3]
bubbleSort [5,4,3,2,1] → [1,2,3,4,5]
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
