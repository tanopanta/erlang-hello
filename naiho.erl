-module(naiho).
-export([naiho/0]).

naiho() ->
    L = [I*I || I <- [1,2,3,4,5], (I rem 2)==0],
    io:format("~p~n", [L]).
