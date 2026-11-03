% Only This
-module(a).
-export([main/0]).

main() ->
    receive
        a -> ok
    end.
