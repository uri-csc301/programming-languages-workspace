# Week 1: Programming Languages & Recursion

## Self Assessment - Recursion
These problems are designed to help you practice **recursion**.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Instructions

- You may use any of the following languages:
  - **Java**
  - **Python**
  - **C**
  - **C++**

- The following languages are also available, but are not required for these problems:
  - **SML**
  - **Prolog**

- Focus on writing **recursive solutions**
- Make sure you understand:
  - the **base case**
  - the **recursive case**

---

## How To Work

1. Create your own files in this folder (e.g., `countdown.py`, `exponent.cpp`)
2. Open the terminal in Codespaces
3. Navigate to this folder (e.g., `cd self-assess-problems/week-01-recursion`)
4. Run your program using the appropriate command (see below)
5. Test your program with different inputs

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

## Problem 1: Countdown

Write a recursive program that outputs a countdown:

```
5
4
3
2
1
Blast off!
```

### Hint
If we want to countdown from 0, then it's over. Don't do anything! If we want to countdown from n, then count n and countdown from n-1.

---

## Problem 2: Exponent

Write a recursive program that computes an exponent:

```
2^3 = 8
8^2 = 64
5^3 = 125
```

### Hint
Think recursively! What's the recursive definition of an exponent? What's the base case? What's the general (recursive) case?

---

## Problem 3: Digital Sum

Write a recursive function that computes the sum of digits of a number:

```
digitalSum(2019) → 12
(2+0+1+9=12)
```

### Hint
Think recursively! What's the base case? What's the general (recursive) case? Use n % 10 and n // 10 to deal with one digit at a time!

---

## Reflection

After completing these problems, think about:

- Which problem was easiest? Why?
- Where did recursion feel confusing?
- How does recursion compare to iteration?
