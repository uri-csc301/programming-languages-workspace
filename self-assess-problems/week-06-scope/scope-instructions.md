# Week 6: Scope

## Self Assessment – Scope

These practice problems are designed to reinforce your understanding of **scope** and how names are resolved in a program.

You may find it helpful to complete the [Scope Tutorial](https://homepage.cs.uri.edu/faculty/hamel/courses/home/csc301/labs/scope_lab/scope_lab.html) before attempting these problems.

⚠️ Self assessments are **not graded** and will not be submitted. They are strongly recommended for practice.

---

## Problem 1: Understanding Scope

The following ML example illustrates how scope behaves with **nested blocks**:

```sml
fun g x =
  let
    val inc = 1;
    fun f y = y + inc;
    fun h z =
      let
        val inc = 2;
      in
        f z;
      end;
  in
    h x;
  end;
```

---

### Your Task

Carefully analyze the program and answer the following:

---

### (a) Blocks

Draw a circle around every **block** and assign each block a number.

Hint: Each `let ... in ... end` introduces a new block.

```text
YOUR ANSWER HERE
```

---

### (b) Definitions

Identify **every definition of a name** in the program.

Include:
- variables (`val`)
- function definitions (`fun`)
- parameters

```text
YOUR ANSWER HERE
```

---

### (c) Scope of Definitions

For each definition, describe its **scope** in terms of your block numbers.

Where is each definition visible?

```text
YOUR ANSWER HERE
```

---

### (d) Name Binding

For each **use of a name** (not its definition), indicate which definition it is bound to.

Check that your answers are consistent with your scopes from part (c).

```text
YOUR ANSWER HERE
```

---

### (e) What is the final value returned by g 5?

Explain your reasoning.

```text
YOUR ANSWER HERE
```

---

## Important Concept

In ML, scope is **static (lexical)**:

- Names are resolved based on **where they are defined in the code**
- NOT based on where functions are called

This is especially important when analyzing:
- nested functions
- shadowed variables (like `inc` in this example)

---

## Goal

This problem will help you practice:

- identifying blocks and scopes  
- understanding variable shadowing  
- tracing name bindings  
- distinguishing between **definition vs use**  
