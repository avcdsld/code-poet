% What Remains
-module(a).
-export([a/0]).

a() ->
    self() ! 0,
    self() ! {0, 1},
    receive
        {0, X} -> X
    end.
