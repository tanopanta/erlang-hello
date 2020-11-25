-module(status).
-export([serve/1]).

serve(N) ->
    try call(N) of
        Y when Y >= 200, Y < 300 -> {sucess, Y};
        Y when Y >= 300, Y < 400 -> {redirect, Y}
    catch
        throw:Y -> {client_error, Y};
        error:Y -> {server_error, Y}
    end.

call(X) when X >= 200, X < 400 -> X; 
call(X) when X >= 400, X < 500 -> throw(X); 
call(X) when X >= 500, X < 600 -> error(X); 
call(X) -> exit(X).
