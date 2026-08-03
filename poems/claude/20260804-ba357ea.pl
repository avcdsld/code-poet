%% Every Way I Try

fits(me, you) :- me = you.
fits(me, you) :- you = me.
fits(me, you) :- fits(you, me).

:- \+ fits(me, you).
