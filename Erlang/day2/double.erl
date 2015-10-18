%% ---
%%  Excerpted from "Seven Languages in Seven Weeks",
%%  published by The Pragmatic Bookshelf.
%%  Copyrights apply to this code. It may not be used to create training material, 
%%  courses, books, articles, and the like. Contact us if you are in doubt.
%%  We make no guarantees that this code is fit for any purpose. 
%%  Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
%%---
-module(double).
-export([double_all/1]).

double_all([]) -> [];
double_all([First|Rest]) -> [First + First|double_all(Rest)].

% 22> c(double).
% {ok,double}
% 23> double:double_all([1, 2, 3]).
% [2,4,6]
% 24> 

Fibs = [1, 1, 2, 3, 5]. 
%[1,1,2,3,5]
Double = fun(X) -> X * 2 end.
% #Fun<erl_eval.6.13229925>
lists:map(Double, Fibs). 
% [2,2,4,6,10]

[Double(X) || X <- Fibs].
% [2,2,4,6,10]








