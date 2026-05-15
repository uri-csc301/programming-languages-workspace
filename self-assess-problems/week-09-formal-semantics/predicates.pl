% ============================================
% Week 9 – Self Assessment: Prolog
% File: predicates.pl
%
% Name:
%
% Instructions:
% - Complete each predicate below
% - Use recursion and pattern matching
% - Do NOT use prohibited built-ins
% - Test your predicates using the queries at the bottom
% ============================================


% ============================================
% Problem 1: firstPair/1
%
% firstPair(X)
% Succeeds if X is a list with at least two elements
% and the first two elements are equal
% ============================================

% TODO: define firstPair/1



% ============================================
% Problem 2: del3/2
%
% del3(X, Y)
% Y is the same as X but with the third element removed
% Fail if X has fewer than three elements
% ============================================

% TODO: define del3/2



% ============================================
% Problem 3: halve/3
%
% halve(List, X, Y)
% Split List into two lists X and Y
%
% Behavior:
% - Elements alternate between X and Y
% - Order must be preserved
% ============================================

% TODO: define halve/3



% ============================================
% Problem 4: myflip/2
%
% myflip(X, Y)
% Y is the reverse of list X
%
% Restrictions:
% - Do NOT use reverse/2
% ============================================

% TODO: define myflip/2



% ============================================
% Problem 5: mysquare/2
%
% mysquare(Input, Output)
% Output is a list of the squares of elements in Input
% ============================================

% TODO: define mysquare/2



% ============================================
% Problem 6: second2last/2
%
% second2last(List, X)
% X is the second-to-last element of List
% Fail if List has fewer than 2 elements
% ============================================

% TODO: define second2last/2



% ============================================
% Problem 7: myfilter/3
%
% myfilter(List, Value, Result)
% Result contains elements of List that are > Value
% ============================================

% TODO: define myfilter/3



% ============================================
% Suggested Test Queries
% Run these after loading the file:
%
% swipl
% ?- [predicates].
% ============================================

/*

% firstPair
?- firstPair([a,a,b]).
?- firstPair([a,b,c]).

% del3
?- del3([1,2,3,4], X).
?- del3([1,2], X).

% halve
?- halve([1,2,3,4], X, Y).
?- halve([1,2,3], X, Y).

% myflip
?- myflip([a,b,c], X).

% mysquare
?- mysquare([1,2,3], X).

% second2last
?- second2last([1,2,3,4], X).
?- second2last([1], X).

% myfilter
?- myfilter([1,2,3,4], 2, X).

*/
