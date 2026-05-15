% ============================================
% Week 9: Formal Semantics
% Assignment 9 - Part 1: Prolog Predicates
%
% Name:
%
% Instructions:
% - Complete each predicate below
% - Use recursion and pattern matching
% - Test your predicates using the required queries
% ============================================


% ============================================
% Problem 1: mysquare/2
%
% mysquare(Input, Output)
% Output is a list of the squares of elements in Input
% ============================================

% TODO: define mysquare/2



% ============================================
% Problem 2: second2last/2
%
% second2last(List, X)
% X is the second-to-last element of List
% Fail if List has fewer than 2 elements
% ============================================

% TODO: define second2last/2



% ============================================
% Problem 3: myfilter/3
%
% myfilter(List, Value, Result)
% Result contains elements of List that are strictly greater than Value
% ============================================

% TODO: define myfilter/3



% ============================================
% Suggested Test Queries
% ============================================

/*

?- mysquare([],X).
?- mysquare([0],X).
?- mysquare([1],X).
?- mysquare([0,1],X).
?- mysquare([0,1,2,3,4,5],X).

?- second2last([],X).
?- second2last([1],X).
?- second2last([1,2],X).
?- second2last([1,2,3],X).
?- second2last([1,2,3,4],X).
?- second2last([1,2,3,4,5],X).

?- myfilter([],_,X).
?- myfilter([0],0,X).
?- myfilter([1],0,X).
?- myfilter([1,2,3,4],2,X).
?- myfilter([1,2,3,4,5,6,7,8,9,10],6,X).

*/
