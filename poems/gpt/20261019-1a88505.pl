% to be held by what i hold
:- set_prolog_flag(occurs_check, false).

a(A) :-
    A = f(A).
