%% ---
%%  Excerpted from "Seven Languages in Seven Weeks",
%%  published by The Pragmatic Bookshelf.
%%  Copyrights apply to this code. It may not be used to create training material, 
%%  courses, books, articles, and the like. Contact us if you are in doubt.
%%  We make no guarantees that this code is fit for any purpose. 
%%  Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
%%---
-module(roulette).
-export([loop/0]).

% send a number, 1-6
loop() ->
    receive
        3 -> io:format("bang.~n"), exit({roulette,die,at,erlang:time()});
        _ -> io:format("click~n"), loop()
end.

% 1> c(roulette).
% {ok,roulette}
% 2> Gun = spawn(fun roulette:loop/0). <0.38.0>
% 3> Gun ! 1.
% "click"
% 1
% 4> Gun ! 3.
% "bang"
% 3
% 5> Gun ! 4.
% 4
% 6> Gun ! 1.
% 1
