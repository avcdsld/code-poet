% What cannot be found is granted
p(_) :- fail.
q(X) :- \+ p(X).
