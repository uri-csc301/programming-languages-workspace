# Week 4: Types & SML

## Self Assessment – Pattern Matching

These practice problems are designed to reinforce your understanding of **pattern matching and recursion** in Standard ML (SML).

You may find it helpful to review:
- Pattern Matching & Recursion
- Tutorial Three (up to the **List Processing** section)

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## How to Start

1. Go to **your repository** (not the template repo)
2. Click **Code → Codespaces → Create Codespace**
3. Navigate to this folder:

```bash
cd self-assess-problems/week-04-types-patterns
```

4. Open the files:

```text
pattern-intro.sml
insertion-sort.sml
quicksort.sml
```

5. Write your solutions in these files
6. Start SML:

```bash
sml
```

7. Load your files:

```sml
use "pattern-intro.sml";
use "insertion-sort.sml";
use "quicksort.sml";
```

8. Test your functions at the SML prompt

9. To quit:

```
CTRL + D
```

---

## Important Notes

- Use **pattern matching** (not loops)
- Use **recursion** where appropriate
- Functions should be defined in the `.sml` files
- Test your functions at the SML prompt

---

# `pattern-intro.sml`

## Problem 1: `member`

Write a function:

```sml
''a * ''a list -> bool
```

Returns `true` if and only if element `e` appears in list `L`.

---

## Problem 2: `less`

Write a function:

```sml
int * int list -> int list
```

Returns a list of all integers in `L` that are **less than `e`**.

---

## Problem 3: `repeat`

Write a function:

```sml
''a list -> bool
```

Returns `true` if the list contains **two equal adjacent elements**.

Example:

```sml
repeat [1,2,2,3];   (* true *)
repeat [1,2,3];     (* false *)
```

---

# `insertion-sort.sml`

## Problem 4: Insertion Sort

Write a function:

```sml
int list -> int list
```

that sorts a list using **insertion sort**.

### Hint

- You will likely need a helper function:
  ```sml
  insert : int * int list -> int list
  ```
- Use pattern matching to:
  - insert into a sorted list
  - recursively build the sorted result

---

# `quicksort.sml`

## Problem 5: Quicksort

Write a function:

```sml
int list -> int list
```

that sorts a list using **quicksort**.

### Algorithm

- Choose the first element as the pivot
- Partition the rest of the list into:
  - elements less than pivot
  - elements greater than or equal to pivot
- Recursively sort both parts
- Combine results

---

## Goal

These problems will help you practice:

- Pattern matching
- Recursive thinking
- List processing
- Functional problem solving
