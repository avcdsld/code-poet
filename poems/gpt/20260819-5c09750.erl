% Taken With
-module(a).
-export([a/0]).

a() ->
    spawn_link(fun() -> exit(x) end),
    receive after infinity -> ok end.
