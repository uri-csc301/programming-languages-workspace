# Week 2: Programming Language Specification

This file contains examples and guided practice to help you understand how **grammars define the syntax of a language**.


Programming languages have two main components:

- **Syntax** → what programs look like (structure)
- **Semantics** → what programs mean (behavior)

**Grammars** are used to **define syntax** precisely and unambiguously.

---

## How Do Grammars Work?

A **grammar** for simple English sentences:

```
<Sentence>* ::= <Noun-Phrase> <Verb> <Noun-Phrase>
<Noun-Phrase> ::= <Article> <Noun>
<Verb> ::= loves | hates | eats
<Article> ::= a | the
<Noun> ::= dog | cat | rat
```

- **Start symbol**: `<Sentence>*`
- **Non-terminals**: `<Sentence>`, `<Noun-Phrase>`, `<Verb>`, `<Article>`, `<Noun>`
- **Terminals**: `loves`, `hates`, `eats`, `a`, `the`, `dog`, `cat`, `rat`
- **Production**: `<Noun-Phrase> ::= <Article> <Noun>`

<br>

**Grammars** are rules for building **parse trees** for sentences in the language defined by the grammar:

```
                      <Sentence>*
      /                   |                \
<Noun-Phrase>           <Verb>       <Noun-Phrase>
    /           \         |          /          \
<Article>     <Noun>    loves    <Article>    <Noun>
 |              |                    |          |
the            dog                  the        cat
```

A **derived string** can only contain terminals.

<br>

The **language** defined by a grammar is the set of all derived strings:

```
L(G) = { s | s can be derived from G }
```

where `G` is a grammar and `s` is a string of terminal symbols.

<br>

A string belongs to a language **if you can construct a valid derivation (or parse tree)** from the grammar.

☞ Show that `s` ∈ `L(G)` by constructing a parse tree.

☞ Show that `s` ∉ `L(G)` by proving that no parse tree can exist for this string in `G`.

---

### Try It Yourself

Determine whether each string belongs to the language defined by this grammar `L(G)`:

1. `the cat eats a rat`
2. `the dog chases the cat`

Ask yourself:
- Can you derive the string using the grammar rules?
- If yes → it belongs to `L(G)`
- If not → it does NOT belong to `L(G)`

---

## Expression Grammar

A simple programming language grammar:

```
<Exp>* ::= <Exp> + <Exp>
        | <Exp> * <Exp>
        | ( <Exp> )
        | a
        | b
        | c
```

Note `(` and `)` are terminal symbols.

---

### Try It Yourself

Determine whether each string belongs to `L(G)`:

1. `a`
2. `a + b`
3. `a + b * c`
4. `(a + b) * c`
5. `((a + b))`
6. `c(a + b)`
7. `(c) + (b)`
8. `b++`

---

Ask yourself:
- Does every symbol appear in the grammar?
- Is the structure valid according to the rules?

---

## Ambiguity

A grammar is **ambiguous** if a string can have **more than one parse tree**.

Consider the sentence:

```
a + b * c
```

We can construct two parse trees:

```
    <Exp>*                        <Exp>*
   /  |  \                       /  |  \
<Exp> + <Exp>                <Exp>  *  <Exp>
  |      / | \               /  |  \     |
  a  <Exp> * <Exp>        <Exp> + <Exp>  c
       |       |            |       |
       b       c            a       b               
```

This can be interpreted as:
- `a + (b * c)`
- `(a + b) * c`

These represent **different computations**, which creates ambiguity.

---

## Resolving Ambiguity

We can fix ambiguity by encoding:

- **Operator precedence** (e.g., `*` before `+`)
- **Associativity** (e.g., left-to-right for `+`)

Rewrite our grammar to use both operator precedence and associativity:

```
<E>* ::= <E> + <T> | <T>
<T> ::= <T> * <P> | <P>
<P> ::= a | b | c
```

This grammar ensures:
- `*` happens before `+`
- Expressions are evaluated consistently  

<br>

There is no other way to derive `a + b * c` from the grammar:

```
         <E>*
     /    |    \
   <E>    +    <T>
 /  |  \        |
<E> + <T>      <P>
 |     |        |
<T>   <P>       c
 |     |
<P>    b
 |
 a           
```

The grammar is **not ambiguous**.

---

## Why This Matters

Grammars are used by:
- Compilers
- Interpreters
- Programming language designers

They ensure that programs are:
- Well-formed
- Unambiguous
- Interpretable by machines

---

## Takeaways

- Grammars define the **structure** of a language
- A string belongs to a language if it can be **derived**
- Ambiguity occurs when multiple parse trees exist
- We resolve ambiguity using **precedence and associativity**
