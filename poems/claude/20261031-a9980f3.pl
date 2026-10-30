%% What No One Mentioned

kind(stranger, stranger).

loved(X) :- kind(X, _), kind(_, X).

%% ?- loved(you).
%% false.
