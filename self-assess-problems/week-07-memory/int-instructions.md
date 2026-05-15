# Week 7: Memory & Java

## Self Assessment – Java

These practice problems are designed to reinforce your understanding of **Java fundamentals**, including:
- classes and objects
- instance methods
- constructors
- basic object-oriented design

You may find it helpful to complete the [Learn Java tutorial](https://www.learnjavaonline.org/en/Welcome) before attempting these problems.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## How to Start

1. Go to **your repository** (not the template repo)
2. Click <b>Code → Codespaces → Create Codespace</b>
3. Wait for setup
4. Open the terminal (e.g., `bash`)
5. Navigate to this folder:

```bash
cd self-assess-problems/week-07-memory
```

---

## Running Java Code

Compile:

```bash
javac Main.java
```

Run:

```bash
java Main
```

---

# Problem: Custom Integer Class

Create a class `Int` in Java with the following components:

---

## (a) Field

- A field to store an `int` value

---

## (b) Constructor

- A constructor so that:

```java
new Int(x)
```

creates an object that stores the value `x`

---

## (c) `toString` Method

- An instance method:

```java
toString()
```

that returns the value of the object as a **String**

---

## (d) `plus` Method

- An instance method:

```java
x.plus(y)
```

that:
- returns a **new `Int` object**
- whose value is the sum of `x` and `y`
- has **no side effects** (does not modify either object)

---

## (e) Additional Methods

Implement the following methods similar to `plus`:

- `minus`
- `times`
- `div`

### Notes:
- Each method should return a **new `Int` object**
- `div` should perform **integer division** (like `/` on `int`)
- No method should modify the original objects

---

# Testing Your Code

In your `Main.java`, create and test your class:

Example:

```java
Int a = new Int(10);
Int b = new Int(5);

System.out.println(a.plus(b));   // 15
System.out.println(a.minus(b));  // 5
System.out.println(a.times(b));  // 50
System.out.println(a.div(b));    // 2
```

---

# Important Concepts

This problem reinforces:

- Objects store **state (fields)**
- Methods operate on **objects**
- Creating **new objects vs modifying existing ones**
- How Java handles **memory and references**

---

# Goal

By completing this problem, you should be comfortable:

- defining a class
- writing constructors
- creating and using objects
- writing methods that return new objects
- understanding side effects
