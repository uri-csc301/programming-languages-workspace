% ============================================
% Week 8: Prolog Assignment
% File: a8.pl
%
% Name:
%
% Instructions:
% - Complete each predicate below
% - Use recursion and pattern matching
% - Test your predicates using the provided queries
% ============================================


% ============================================
% Problem 1: del3/2
%
% del3(X, Y)
% Y is the same as X but with the third element removed
% Fail if X has fewer than three elements
% ============================================

% TODO: define del3/2



% ============================================
% Problem 2: halve/3
%
% halve(List, X, Y)
% Split List into two lists X and Y
%
% Behavior:
% - Elements alternate between X and Y
% - Order must be preserved
%
% Examples:
% halve([1,2,3,4], X, Y) → X = [1,3], Y = [2,4]
% ============================================

% TODO: define halve/3



% ============================================
% Problem 3: myflip/2
%
% myflip(X, Y)
% Y is the reverse of list X
%
% Restrictions:
% - Do NOT use reverse/2
% - You MAY use append/3
% ============================================

% TODO: define myflip/2



% ============================================
% Suggested Test Queries
% (Run these in Prolog after loading the file)
% ============================================

/*

?- del3([], X).
?- del3([1], X).
?- del3([1,2], X).
?- del3([1,2,3], X).
?- del3([1,2,1,3], X).

?- halve([], X, Y).
?- halve([1], X, Y).
?- halve([1,2], X, Y).
?- halve([1,2,3], X, Y).
?- halve([1,2,3,4], X, Y).

?- myflip([a,b,c,d,e,f], X).
?- myflip([a1,a2,a3,a4], X).

*/
