-module(after).
-export([start/0]).

%% Letters to a closed door

start() ->
  Pid = spawn(fun() -> ok end),
  timer:sleep(100),
  Pid ! i_miss_you,
  Pid ! are_you_there,
  Pid ! please.
