-module(list).
-export([list_sample/0]).
-export([len/1]).

list_sample() ->
    L = [1,2,3],
    io:format("~p~n", [L]).

len([]) ->
    0;
len([Head|Tail]) ->
    1+len(Tail).
