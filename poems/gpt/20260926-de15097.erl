% Inheritance
-module(m).
-export([f/0]).

f() ->
    spawn_link(fun() -> exit(1) end),
    receive after infinity -> 0 end.
