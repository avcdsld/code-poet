-module(together).
%% What We Were
-export([us/0]).

us() ->
    You = spawn(fun() -> receive after infinity -> ok end end),
    link(You),
    exit(You, gone).
