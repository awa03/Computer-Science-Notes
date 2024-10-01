
% facts
studies(charlie, cop4530).
studies(aiden, cop4621).
studies(sylla, arh4850).

teaches(grover, cop4530).
teaches(yaun, cop4621).
teaches(stephanie, arh4850).

% Rules
professor(X, Y) :- teaches(X, C), studies(Y, C). % check if they are the students professor
classtaken(X, Y) :- teaches(X, C), studies(Z, C).

