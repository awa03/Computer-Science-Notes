% Facts
amount_saved(22000).
earnings(25000, steady).
dependents(3).

% Minimum savings and income calculations
minsavings(Y, MinSavings) :- MinSavings is 5000 * Y.
minincome(Y, MinIncome) :- MinIncome is 15000 + (4000 * Y).

% Rules for adequacy of savings and income
savings_account(adequate) :-
    amount_saved(X),
    dependents(Y),
    minsavings(Y, MinSavings),
    X > MinSavings.

savings_account(inadequate) :-
    amount_saved(X),
    dependents(Y),
    minsavings(Y, MinSavings),
    X =< MinSavings.

income(adequate) :-
    earnings(X, steady),
    dependents(Y),
    minincome(Y, MinIncome),
    X > MinIncome.

income(inadequate) :-
    earnings(X, steady),
    dependents(Y),
    minincome(Y, MinIncome),
    X =< MinIncome.

income(inadequate) :-
    earnings(_, unsteady).

% Investment recommendations
investment(savings) :-
    savings_account(inadequate).

investment(stocks) :-
    savings_account(adequate),
    income(adequate).

investment(combination) :-
    savings_account(adequate),
    income(inadequate).


