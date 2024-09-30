# Prolog uses predicate calculus
# Missing Exsititential Qualifier -- Only Universal
# All variables are universally qualifyable
# AND - ,
# or - ;
# only if :-
# not - not

# X is a variable since it is starts w uppercase

% Facts
parent(john, mary).
parent(john, michael).
parent(susan, mary).
parent(susan, michael).

% Rule: Siblings
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Query example
% To check if mary and michael are siblings:
% ?- sibling(mary, michael).
 
