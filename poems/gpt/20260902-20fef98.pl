% Assumed away
present(_) :- fail.
absent(X) :- \+ present(X).
