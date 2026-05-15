% ============================================
% Prolog Interpreter Example (AST Evaluation)
% ============================================

% constant
val1(const(X), X).

% addition
val1(plus(X,Y), Value) :-
    val1(X, VX),
    val1(Y, VY),
    Value is VX + VY.

% multiplication
val1(times(X,Y), Value) :-
    val1(X, VX),
    val1(Y, VY),
    Value is VX * VY.


% ============================================
% Try these:
%
% ?- val1(const(5), X).
% ?- val1(plus(const(1),const(2)), X).
% ?- val1(plus(const(1),times(const(2),const(3))), X).
% ============================================
