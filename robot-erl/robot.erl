-module(robot).
-export([place/1, move/1, left/1, right/1]).

place(Pos = {X,Y,_D}) when X >= 0, Y >= 0, X =< 4, Y =< 4 -> Pos.

move({X, Y, north}) -> place({X,   Y+1, north});
move({X, Y, east})  -> place({X+1, Y,   east});
move({X, Y, south}) -> place({X,   Y-1, south});
move({X, Y, west})  -> place({X-1, Y,   wetst});
move(Pos) -> Pos.

left({X, Y, north}) -> place({X, Y, west});
left({X, Y, west})  -> place({X, Y, south});
left({X, Y, south}) -> place({X, Y, east});
left({X, Y, east})  -> place({X, Y, north});
left(Pos) -> Pos.

right({X, Y, north}) -> place({X, Y, east});
right({X, Y, east})  -> place({X, Y, south});
right({X, Y, south}) -> place({X, Y, west});
right({X, Y, west})  -> place({X, Y, north});
right(Pos) -> Pos.


