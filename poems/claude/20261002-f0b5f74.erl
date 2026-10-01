-module(letting_go).
%% You Were Still Warm When the Message Arrived
-export([start/0]).

start() ->
    Pid = spawn(fun() -> ok end),
    monitor(process, Pid),
    receive
        {'DOWN', _, process, Pid, _} -> ok
    end.
