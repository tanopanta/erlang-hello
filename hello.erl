-module(hello).
-export([hello_world/0]).
-export([echo/1]).

hello_world() ->
    Msg = "Hello, World!",
    io:format("~s~n", [Msg]).

echo(a) -> "a";
echo(b) -> "b";
echo(_) -> error.
