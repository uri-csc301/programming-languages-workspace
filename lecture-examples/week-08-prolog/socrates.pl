% example using modens ponens type of reasoning.

% forall X [human(X) implies mortal(X)]
mortal(X):- human(X).

% socrates is human.
human(socrates).

% now in order to try to prove that socrates is mortal 
% you would have to write the following query:
%
%       ?- mortal(socrates).

