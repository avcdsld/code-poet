% Filled, still waiting
-module(a).
-export([main/1]).

main(_) ->
    self() ! a,
    self() ! b,
    receive
        c -> ok
    end.
