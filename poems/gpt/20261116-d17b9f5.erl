% Bound
-module(a).
-export([main/0]).

main() ->
    spawn_link(fun() -> exit(a) end),
    receive after infinity -> ok end.
