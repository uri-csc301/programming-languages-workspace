% this program demonstrates a simple indefinite 
% interaction loop.  Note the nullary predicate
% and the tail recursion in the definition of this
% predicate that drives this loop.
%
% we want this program to start up as soon
% as Prolog loads it -- we use a special
% predicate 'initialization' to accomplish that,
% see below.

interact:- 
    nl,
    write('gimme a list> '),
    read(X),
    reverse(X,Y),
    write('this is the reverse: '),
    write(Y),
    nl,
    interact.

% this directive tells Prolog to start executing the 
% program immediately with the predicate interact

:- initialization(interact).

