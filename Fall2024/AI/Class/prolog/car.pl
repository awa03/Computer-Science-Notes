% jack
owns(jack, car(bwm)).
owns(sylla, car(volkswagon)).
owns(aiden, car(lamborgini)).
owns(sylla, cat(algae)).

sportscar(car(lamborgini)).
hatchback(car(volkswagon)).

animal(cat(algae)).

% Rules
hasanimal(X, Y) :- owns(X, Y).



