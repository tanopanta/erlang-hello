-module(konnnichiha).
-export([konnnichiha_sekai/0]).

konnnichiha_sekai() ->
    io:format("~ts~n", [<<"こんにちは、世界！☀"/utf8>>]).
