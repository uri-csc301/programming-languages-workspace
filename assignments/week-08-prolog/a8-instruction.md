# Week 8: Prolog

## Assignment 8: Prolog

This assignment gives you practice with **Prolog**, including:
- posing queries
- understanding how Prolog resolves them
- writing rules (predicates)
- working with lists and recursion
---

## Getting Started

1. Go to **your repository** (not the template repo)
2. Navigate to:
   ```
   assignments/week-08-prolog/
   ```
3. Complete:
   - **Part 1 (Family Facts & Rules)** in this file (`a8-instructions.md`)
   - **Part 2 (List Predicates)** in `a8.pl`
  
4. Commit your work when finished

---

# Part 1: Family Facts & Rules

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Run the following:

```bash
cd assignments/week-08-prolog
swipl
?- [family].
```

---

## (a) Evaluating Queries

Pose the following queries:

```prolog
?- female(ann).
?- female(jim).
?- parent(X,bob).
?- parent(X,ann), parent(X,pat).
```

### Your Task

What are the results of each query?

⚠️ Some queries may return **multiple answers**

```text
YOUR ANSWERS HERE
```

---

## (b) Writing Queries

Using the `parent` predicate, write queries for:

- Who is Pat’s parent?
- Does Liz have a child?
- Who is Pat’s grandparent?

```text
YOUR ANSWERS HERE
```

---

## (c) Writing Rules

Extend the program by defining the following predicates:

```prolog
sister(X,Y)        % X is the sister of Y
son(X,Y)           % X is the son of Y
father(X,Y)        % X is the father of Y
grandmother(X,Y)   % X is the grandmother of Y
ancestor(X,Y)      % X is an ancestor of Y
```

### Notes:
- Some predicates may require **recursion**
- You may find this helpful:

```prolog
different(X,Y) :- not(X = Y).
```

---

## Testing Your Rules

Demonstrate your program works using:

```prolog
?- sister(X,pat).
?- sister(X,Y).
?- son(jim,X).
?- father(X,bob).
?- grandmother(X,ann).
?- ancestor(X,jim).
```


---

# Part 2: Prolog List Predicates

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Wait for setup
4. Open the terminal (`bash`)
5. Navigate to this folder:

```bash
cd assignments/week-08-prolog
```

6. Open and complete the problems in this file:

```text
a8.pl
```

7. Save your changes

8. Start Prolog:

```bash
swipl
```

9. Load this file:

```prolog
[a8].
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

Your predicates must:
- use **recursion**
- use **pattern matching**
- NOT rely on prohibited built-ins (when specified)

<br>

⚠️ Your program must **run without errors** and produce the **correct output** using **recursion (not iteration)**. If your program:
- does not run  
- runs but crashes  
- runs but produces incorrect output  

then it will receive **no credit**.

---

## Problem 1: `del3/2`

Define:

```prolog
del3(X,Y)
```

so that:
- `Y` is `X` with the **third element removed**
- fails if `X` has fewer than three elements

### Test Cases

```prolog
?- del3([], X).
false.

?- del3([1], X).
false.

?- del3([1, 2], X).
false.

?- del3([1, 2, 3], X).
X = [1, 2].

?- del3([1, 2, 1, 3], X).
X = [1, 2, 3].
```

---

## Problem 2: `halve/3`

Define:

```prolog
halve(List, X, Y)
```

so that:
- splits a list into two lists

### Expected Behavior

```prolog
?- halve([], X, Y).
X = [],
Y = [].

?- halve([1], X, Y).
X = [1],
Y = [].

?- halve([1,2], X, Y).
X = [1],
Y = [2].

?- halve([1,2,3], X, Y).
X = [1,3],
Y = [2].

?- halve([1,2,3,4], X, Y).
X = [1,3],
Y = [2,4].
```

---

## Problem 3: `myflip/2`

Define:

```prolog
myflip(X,Y)
```

so that:
- `Y` is the reverse of `X`

### Restrictions:
- Do NOT use `reverse/2`
- You MAY use `append/3`

### Test Cases

```prolog
?- myflip([a,b,c,d,e,f], X).
X = [f, e, d, c, b, a].

?- myflip([a1,a2,a3,a4], X).
X = [a4, a3, a2, a1].
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
