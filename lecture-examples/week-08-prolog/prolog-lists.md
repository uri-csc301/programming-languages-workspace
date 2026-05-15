# Week 8: Prolog

This file introduces the basics of **Prolog**, a logic programming language.

---

## How To Run Examples Using Codespaces

- Go to **your repository** (not the template repo)
- Click **Code → Codespaces → Create Codespace**
- Wait for setup
- Open the terminal (`bash`)
  - ⚠️ NOT GitHub Codespace Configuration (may appear temporarily but switch to `bash`)
 
- Navigate to this folder:

```bash
cd lecture-examples/week-08-prolog
```

---

### Prolog

Start Prolog:

```bash
swipl
```

To quit: 

```
CTRL + Z
```

---

## Lists

Prolog lists:

```prolog
[1,2,3]
[a,b,c]
[]
```

---

## Pattern Matching

```prolog
?- [a,b] = [a,X].
X = b
```

---

## Head/Tail

```prolog
[H|T]
```

Example:

```prolog
?- [a,b,c] = [X|Y].
X = a
Y = [b,c]
```

---

## First Element

```prolog
first([H|_], H).
```

---

## Last Element

```prolog
last([A], A).
last([_|T], X) :- last(T, X).
```

---

## Append

```prolog
append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).
```

---

## Takeaways

- Lists use pattern matching  
- Recursion is essential  
- Unification drives computation
