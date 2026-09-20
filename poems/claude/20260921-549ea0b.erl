-module(elegy).
-export([farewell/0]).

%% what the dead leave behind

farewell() ->
    Self = self(),
    spawn(fun() ->
        Ref = monitor(process, Self),
        receive {'DOWN', Ref, _, _, _} -> Self ! Self end
    end),
    exit(normal).
