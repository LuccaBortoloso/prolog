exibe([]) :- nl.
exibe([X|Y]) :- write(X), exibe(Y).

membro(X, [X|_]).
membro(X, [_|Y]) :- membro(X,Y).