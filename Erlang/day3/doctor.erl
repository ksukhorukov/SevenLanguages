%% ---
%%  Excerpted from "Seven Languages in Seven Weeks",
%%  published by The Pragmatic Bookshelf.
%%  Copyrights apply to this code. It may not be used to create training material, 
%%  courses, books, articles, and the like. Contact us if you are in doubt.
%%  We make no guarantees that this code is fit for any purpose. 
%%  Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
%%---
-module(doctor).
-export([loop/0]).
loop() ->
    process_flag(trap_exit, true), 
    receive
        new ->
            io:format("Creating and monitoring process.~n"),
            register(revolver, spawn_link(fun roulette:loop/0)),
            loop();
        {'EXIT', From, Reason} -> 
            io:format("The shooter ~p died with reason ~p.", [From, Reason]),
      io:format(" Restarting. ~n"),
            self() ! new, 
            loop()
        end.

% 2> Doc = spawn(fun doctor:loop/0).
% <0.40.0>
% 3> revolver ! 1.
% ** exception error: bad argument
%      in operator  !/2
%         called as revolver ! 1
% 4> Doc ! new.
% Creating and monitoring process.
% new
% 5> revolver ! 1.
% click
% 1
% 6> revolver ! 3.
% bang.
% 3
% The shooter <0.44.0> died with reason {roulette,die,at,{17,31,48}}. Restarting. 
% Creating and monitoring process.
% 7> revolver ! 4.
% click
% 4
% 8> 
