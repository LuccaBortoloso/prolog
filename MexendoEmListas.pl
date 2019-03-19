tamanho([], 0).
tamanho([_|Y], N) :- tamanho(Y, N1), N is N1 + 1.

add_(N,[],[N]).
add_(N,[X|Y], [X|Z]) :- add_(N, Y, Z).

remove_(N, [N|Y], Y).
remove_(N, [X|Y], Z) :- X1 is X, remove_(N, Y, Z1), add_(X1, Z1, Z).