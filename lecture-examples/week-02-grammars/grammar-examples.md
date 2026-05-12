# Week 2: Grammar Examples

## Example 1: Simple English Grammar

<Sentence> ::= <Noun-Phrase> <Verb> <Noun-Phrase>
<Noun-Phrase> ::= <Article> <Noun>
<Verb> ::= loves | hates | eats
<Article> ::= a | the
<Noun> ::= dog | cat | rat

Try:
- the cat eats a rat
- the dog chases the cat

For each string, decide whether it belongs to L(G).

## Example 2: Expression Grammar

<Exp> ::= <Exp> + <Exp>
        | <Exp> * <Exp>
        | ( <Exp> )
        | a
        | b
        | c
