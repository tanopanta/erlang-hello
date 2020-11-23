-module(pattern).
-export([pattern_hello/0]).

pattern_hello() ->
    X = 3,
    case X of
        1 ->
            Msg = a;
        2 ->
            Msg = b;
        _ ->
            Msg = c
    end,
    io:format("~p~n", [Msg]).
