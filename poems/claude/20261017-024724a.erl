-module(surviving).
%% "You Can Only Survive By Not Sharing It"
-export([start/0]).

start() ->
  Linked = spawn_link(fun() -> exit(gone) end),

  receive
    {'EXIT', Linked, gone} -> still_here
  after 0 ->
    gone
  end.

%% without trap_exit: both die
%% with trap_exit: death becomes a message
%% you read it, you do not feel it
