# Week 10: Formal Semantics

---

## Arithmetic in Prolog

Prolog performs arithmetic using the predicate:

```prolog
X is Expression
```

Example:

```prolog
?- X is 10 + 5.
X = 15
```

Operator precedence is respected.

---

## ⚠️ Important

- `=` → unification  
- `is` → evaluation  

---

## Input / Output

### Write

```prolog
write(hello).
```

### Read

```prolog
read(X).
```

### New Line

```prolog
nl.
```

These are **extra-logical predicates** (they have side effects).

---

## Example: Print Modified List

```prolog
fadd([]).
fadd([H|T]) :-
    I is H + 1,
    write(I), nl,
    fadd(T).
```

---

## Takeaways

- Use `is` for computation  
- I/O introduces side effects  
- Prolog is not purely declarative when using I/O
