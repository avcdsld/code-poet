-module(poem).
-export([start/0]).

%% What We Tell Ourselves

start() ->
    spawn(fun listen/0).

listen() ->
    self() ! {heard, true},
    receive
        {loved, true} -> ok
    end.
