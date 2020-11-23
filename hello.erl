-module(hello).
-export([hello_world/0]).

hello_world() ->
    Msg = "Hello, World!",
    io:format("~s~n", [Msg]).
