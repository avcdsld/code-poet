% The first answer keeps the rest unborn
a(1).
a(2).

b(X) :-
    a(X),
    !.
