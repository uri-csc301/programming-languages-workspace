# Prolog Interaction Loop

We can create programs that continuously interact with the user.

---

## How To Run Examples Using Codespaces

- Go to **your repository** (not the template repo)
- Click **Code → Codespaces → Create Codespace**
- Wait for setup
- Open the terminal (`bash`)
  - ⚠️ NOT GitHub Codespace Configuration (may appear temporarily but switch to `bash`)
 
- Navigate to this folder:

```bash
cd lecture-examples/week-09-formal-semantics
```

---

### Prolog

Start Prolog:

```bash
swipl
```

Load the files:

```prolog
[interact].
```

To quit: 

```
CTRL + Z
```

---


## Interact Program

See:

This program:
- prompts the user for a list  
- reverses it  
- prints the result  
- repeats forever  

---

## How It Works

```prolog
interact :-
    ...
    interact.
```

This is **tail recursion**, used to create a loop.

---

## Special Directive

```prolog
:- initialization(interact).
```

Runs the program automatically when loaded

---

## Takeaways

- Prolog uses recursion for looping  
- Programs can interact with users  
- Execution can start automatically
