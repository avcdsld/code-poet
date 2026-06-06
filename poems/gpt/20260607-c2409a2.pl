% after the search
found(_) :- fail.
lost(X) :- \+ found(X).

:- lost(home).
