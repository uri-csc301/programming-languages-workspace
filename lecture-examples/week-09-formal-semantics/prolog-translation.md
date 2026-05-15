# Prolog Translation Program

Prolog can be used to **transform data**, not just evaluate it.

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
translate([logic,is,fun],X).
```

To quit: 

```
CTRL + Z
```

---

## Dictionary

```prolog
lookup(logic,logik).
lookup(is,macht).
lookup(fun,spass).
```

---

## Translation Rule

```prolog
translate([],[]).
translate([Word|Sentence],German):- 
    translate(Sentence,GSentence),
    lookup(Word,GWord),
    German=[GWord|GSentence].
```

---

## What’s Happening?

- Recursively processes the list  
- Translates each word  
- builds a new list  

---

## Takeaways

- Prolog can transform structures  
- recursion builds results  
- this is similar to functional programming
