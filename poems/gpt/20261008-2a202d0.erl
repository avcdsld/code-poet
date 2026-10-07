% No One Falls Alone
-module(a).
-export([main/0]).

main() ->
    spawn_link(fun() -> exit(1) end),
    receive _ -> ok end.
