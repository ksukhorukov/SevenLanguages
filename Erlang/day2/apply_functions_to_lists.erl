Numbers = [1, 2, 3, 4].
lists:foreach(fun(Number) -> io:format("~p~n", [Number]) end, Numbers).

% 1
% 2
% 3
% 4
% ok

% the same but with the stored function
Print = fun(X) -> io:format("~p~n", [X]) end.
lists:foreach(Print, Numbers).

lists:map(fun(X) -> X + 1 end, Numbers).
% [2,3,4,5]

Small = fun(X) -> X < 3 end.
lists:filter(Small, Numbers).
% [1,2]

lists:all(Small, [0, 1, 2]). 
%true
lists:all(Small, [0, 1, 2, 3]).
% false

lists:any(Small, [0, 1, 2, 3]).
% true
lists:any(Small, [3, 4, 5]).
% false


lists:takewhile(Small, Numbers). 
% [1,2]
lists:dropwhile(Small, Numbers).
% [3,4]
lists:takewhile(Small, [1, 2, 1, 4, 1]). 
% [1,2,1]
lists:dropwhile(Small, [1, 2, 1, 4, 1]). 
% [4,1]

lists:foldl(fun(X, Sum) -> X + Sum end, 0, Numbers).
% 10

Adder = fun(ListItem, SumSoFar) -> ListItem + SumSoFar end.
InitialSum = 0.
lists:foldl(Adder, InitialSum, Numbers).


















