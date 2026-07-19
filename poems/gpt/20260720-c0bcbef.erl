% No Reply
-module(still).
-export([wait/0]).

wait() ->
    receive
    after infinity -> wait()
    end.
