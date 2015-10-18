%% ---
%%  Excerpted from "Seven Languages in Seven Weeks",
%%  published by The Pragmatic Bookshelf.
%%  Copyrights apply to this code. It may not be used to create training material, 
%%  courses, books, articles, and the like. Contact us if you are in doubt.
%%  We make no guarantees that this code is fit for any purpose. 
%%  Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
%%---
-module(basic).
-export([mirror/1]).

mirror(Anything) -> Anything.

% how to use:
% 4> c(basic).
% 5> mirror(smiling_mug).
% ** exception error: undefined shell command mirror/1 6> basic:mirror(smiling_mug).
% smiling_mug
% 6> basic:mirror(1).
% 1