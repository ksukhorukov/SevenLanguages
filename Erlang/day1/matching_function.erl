%% ---
%%  Excerpted from "Seven Languages in Seven Weeks",
%%  published by The Pragmatic Bookshelf.
%%  Copyrights apply to this code. It may not be used to create training material, 
%%  courses, books, articles, and the like. Contact us if you are in doubt.
%%  We make no guarantees that this code is fit for any purpose. 
%%  Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
%%---
-module(matching_function).
-export([number/1]).

number(one)   -> 1;
number(two)   -> 2; 
number(three) -> 3.

% 8> c(matching_function).
% {ok,matching_function}
% 9> matching_function:number(one).
% 1
% 10> matching_function:number(two).
% 2
% 11> matching_function:number(three).
% 3
% 12> matching_function:number(four).
% ** exception error: no function clause matching matching_function:number(four)