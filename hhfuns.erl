-module(hhfuns).
-export([map/2, incr/1, decr/1, one/0, two/0, add/2]).

map(_, []) -> [];
map(F, [H|T]) -> [F(H)|map(F,T)].

incr(X) -> X + 1.
decr(X) -> X - 1.

one() -> 1.
two() -> 2.

add(X,Y) -> X() + Y().
