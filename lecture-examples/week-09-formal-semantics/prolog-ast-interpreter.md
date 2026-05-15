# Prolog As An Interpreter (AST Evaluation)

---

## What is Semantics?

Semantics defines the **meaning (behavior)** of a program. :contentReference[oaicite:8]{index=8}  

---

## Abstract Syntax Trees (ASTs)

Instead of parse trees, we use:

**ASTs (Abstract Syntax Trees)**

Example:

```
1 + 2 * 3
```

becomes:

```prolog
plus(const(1), times(const(2), const(3)))
```

---

## Interpreter In Prolog

We define meaning using rules:

```prolog
val1(plus(X,Y),Value) :-
    val1(X,XValue),
    val1(Y,YValue),
    Value is XValue + YValue.
```

```prolog
val1(times(X,Y),Value) :-
    val1(X,XValue),
    val1(Y,YValue),
    Value is XValue * YValue.
```

```prolog
val1(const(X),Value) :- Value = X.
```

---

## Example

```prolog
?- val1(plus(const(1),const(2)),X).
X = 3
```

```prolog
?- val1(plus(const(1),times(const(2),const(3))),X).
X = 7
```

---

## What This Means

You just built an **interpreter**

- input = program (AST)
- output = result (value)

---

## Key Takeaways

- semantics = behavior  
- AST simplifies structure  
- Prolog rules define evaluation  
- this is **operational semantics**
