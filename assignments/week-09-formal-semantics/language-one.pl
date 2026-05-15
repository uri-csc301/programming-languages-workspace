% ============================================
% Week 9: Formal Semantics
% Assignment 9 - Part 2: Language ONE
%
% Name:
%
% Instructions:
% - Extend Language ONE with subtraction
% - Add subtraction to the grammar in the comment section
% - Add support for minus(X,Y) in the interpreter
% - Test your interpreter using the required queries
% ============================================


% ============================================
% Language ONE Grammar
% ============================================

/*

Original Language ONE Grammar:

<exp> ::= <exp> + <mulexp> | <mulexp>
<mulexp> ::= <mulexp> * <rootexp> | <rootexp>
<rootexp> ::= (<exp>) | <constant>
<constant> ::= all valid integer constants

Updated Grammar With Subtraction:

TODO: Write your updated grammar here.

*/


% ============================================
% Abstract Syntax
% ============================================

/*

Language ONE AST terms:

const(X)       represents a constant integer
plus(X,Y)     represents X + Y
times(X,Y)    represents X * Y

TODO:
Add the AST term for subtraction.

*/


% ============================================
% Operational Semantics Interpreter
% val1(AST, Value)
% ============================================

% Constants
val1(const(X), X).

% Addition
val1(plus(X,Y), Value) :-
    val1(X, XValue),
    val1(Y, YValue),
    Value is XValue + YValue.

% Multiplication
val1(times(X,Y), Value) :-
    val1(X, XValue),
    val1(Y, YValue),
    Value is XValue * YValue.

% Subtraction
% TODO: define val1 for minus(X,Y)



% ============================================
% Required Test Queries
% ============================================

/*

Expression: 3 - 1

?- val1(minus(const(3), const(1)), X).


Expression: 4 - 2

?- val1(minus(const(4), const(2)), X).


Expression: 3 * 2 - 3

?- val1(minus(times(const(3), const(2)), const(3)), X).


Expression: 3 * (2 - 3)

?- val1(times(const(3), minus(const(2), const(3))), X).

*/
