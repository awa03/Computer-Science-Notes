# Homework 8

__Aiden Allen__

****

__1) Run the Farmer-Wolf-Goat-Cabbage program in the zip file posted on the website, and as described in Section 4.2 of my version of Chapter 4 of the supplementary text, and turn in a listing of the output.__

![[farmer-goat.png]]

****

<div style="page-break-after: always; visibility: hidden">
\pagebreak
</div>

__2) Write a Prolog program to solve the 8 x 8 knights tour problem described in Example 6.1.2 in my revised Chapter 6 (copied from Luger, Example 6.2.3, p. 209).__


```prolog
% given function 
less_than_or_equals(A, B) :- A =< B.
greater_than_or_equals(A, B) :- A >= B.
equals(A, B) :- A is B.

% define knight moves
move((X, Y), (X1, Y1)) :-
    member((DX, DY), [(2, 1), (2, -1), (-2, 1), (-2, -1), (1, 2), (1, -2), (-1, 2), (-1, -2)]),
    X1 is X + DX,
    Y1 is Y + DY,
    between(1, 8, X1),
    between(1, 8, Y1).

display([]).
display([H|T]) :-
    display(T),
    write(H), nl.

path(X, X, L) :- 
    display(L).
path(X, Y, L) :-
    move(X, Z),
    not(member(Z, L)),
    path(Z, Y, [Z|L]).
```



![[king_1_out.png]]


****

<div style="page-break-after: always; visibility: hidden">
\pagebreak
</div>

__3) Do the same thing as in Question 2, but use the depth-first “shell” described in Section 4.3 of my version of Chapter 4 of the supplementary text.  This amounts to copying my file depth1 in the zip file from the course website and changing the move predicate to be the one you created for Question 2.  Show the output of a run that successfully finds a path from chessboard cell (1,1) to cell (8,8).__


```prolog
move((X, Y), (X1, Y1)) :-
    member((DX, DY), [(2, 1), (2, -1), (-2, 1), (-2, -1),
                      (1, 2), (1, -2), (-1, 2), (-1, -2)]),
    X1 is X + DX,
    Y1 is Y + DY,
    between(1, 8, X1),
    between(1, 8, Y1).

depth_first_search(Start, Goal) :-
    dfs(Start, Goal, [Start]).  % Start DFS without needing a final path

dfs(Goal, Goal, _) :-
    write('Goal reached: '), write(Goal), nl.  

dfs(Start, Goal, Visited) :-
    move(Start, Next),                         
    \+ member(Next, Visited),                  % visited
    write('Moving from '), write(Start),       
    write(' to '), write(Next), nl,
    dfs(Next, Goal, [Next | Visited]).         % Recursive DFS 

% test query:
% ?- depth_first_search((1,1), (8,8)).
```

![[king_2_out 1.png]]