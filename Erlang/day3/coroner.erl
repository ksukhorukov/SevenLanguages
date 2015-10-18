%% ---
%%  Excerpted from "Seven Languages in Seven Weeks",
%%  published by The Pragmatic Bookshelf.
%%  Copyrights apply to this code. It may not be used to create training material, 
%%  courses, books, articles, and the like. Contact us if you are in doubt.
%%  We make no guarantees that this code is fit for any purpose. 
%%  Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
%%---
-module(coroner).
-export([loop/0]).

loop() ->
    process_flag(trap_exit, true), 
    receive
        {monitor, Process} -> 
            link(Process), 
            io:format("Monitoring process.~n"),
            loop();
            
        {'EXIT', From, Reason} -> 
            io:format("The shooter ~p died with reason ~p.", [From, Reason]),
      io:format("Start another one.~n"), 
            loop()
        end.


% 1> c(roulette). {ok,roulette} 2> c(coroner). {ok,coroner}
% 3> Revolver=spawn(fun roulette:loop/0). <0.43.0>
% 4> Coroner=spawn(fun coroner:loop/0). <0.45.0>
% 5> Coroner ! {monitor, Revolver}. Monitoring process. {monitor,<0.43.0>}
% 6> Revolver ! 1.
% click
% 1
% 7> Revolver ! 3.
% bang.
% 3
% The shooter <0.43.0> died with reason {roulette,die,at,{8,48,1}}. Start another one.