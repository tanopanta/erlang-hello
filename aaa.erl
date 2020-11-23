-module(aaa).
-export([aaa/0]).

aaa() ->
    if
        1==2 -> io:format("1 is 2~n");
        1==1 -> io:format("1 is 1~n")
    end.
