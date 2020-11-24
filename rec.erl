-module(rec).
-export([reco/0]).

-record(user, {name, age}).

reco() ->    
    U1 = #user{name="taro", age=4},
    io:format("~s is ~p years old. ~n", [U1#user.name, U1#user.age]),
    io:format("1 year later.. ~n", []),
    U2 = U1#user{age=5},
    io:format("~s is ~p years old. ~n", [U2#user.name, U2#user.age]),

    #user{age=5} = U2. % ok.
    % #user{age=6} = U2. % no match of right hand side value.


