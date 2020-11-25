-module(exception).
-export([except/1]).

except(N) ->
    try th(N) of
        200 -> "ok"
    catch
        throw:_ -> "warn";
        exit:_ -> "error";
        error:_ -> "runtime error"
    end.

th(1) -> throw(a); 
th(2) -> exit(a); 
th(3) -> error(a); 
th(_) -> a. 
