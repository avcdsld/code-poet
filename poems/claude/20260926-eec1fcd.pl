%% What I Cannot Prove

loved(you, me).
left(you).

stayed(X) :- loved(X, _), \+ left(X).

%% ?- stayed(you).
%% false.
