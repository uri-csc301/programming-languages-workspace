% the goal of this program is to translate simple English
% statements into German.

% the dictionary
lookup(logic,logik).
lookup(is,macht).
lookup(fun,spass).

% the translation procedure
translate([],[]).
translate([Word|Sentence],German):- 
    translate(Sentence,GSentence),
    lookup(Word,GWord),
    German=[GWord|GSentence].

% try this program with the query: 
% ?- translate([logic,is,fun],X).
