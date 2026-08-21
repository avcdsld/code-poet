% After the first yes
p(a).
p(b).

q(X) :- p(X), !, fail.
q(c).
