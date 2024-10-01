% Facts about the adequacy of the savings account and income.
savings_account(inadequate).
savings_account(adequate).
income(adequate).
amount_saved(5000).
dependents(child1).
dependents(child2).
dependents(child3).
dependents(child4).
minsavings(child1, 3000).
minsavings(child2, 4000).
minsavings(child3, 5000).
minsavings(child4, 6000).

greater(X, Y) :- X > Y.

% Rule 1: If a savings account is inadequate, consider investing in savings.
investment(savings) :- savings_account(inadequate).

% Rule 2: If a savings account is adequate and income is adequate, consider investing in stocks.
investment(stocks) :- savings_account(adequate), income(adequate).

% Rule 3: If savings account is adequate and income is adequate, consider combination
investment(combination) :- savings_account(adequate), income(inadequate).

% Rule 4: 
savings_account(adequate) :- 
  amount_saved(X),
  dependents(Y),
  minsavings(Y, MinSavings),
  greater(X, MinSavings).



