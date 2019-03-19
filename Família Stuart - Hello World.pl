%Família Stuart (1542-1793)

homem(jaime).
homem(frederico).
homem(charles).
homem(felipe).
homem(leopoldo).
homem(francisco).
mulher(mary).
mulher(ana).
mulher(elizabeth).
mulher(charlotte).
mulher(ec_palatina).
mulher(ec_orleans).
mulher(maria_tereza).
mulher(maria_antonieta).

progenitor(mary, jaime).
progenitor(jaime, elizabeth).
progenitor(ana, elizabeth).
progenitor(frederico, charles).
progenitor(elizabeth, charles).
progenitor(charles, ec_palatina).
progenitor(charlotte, ec_palatina).
progenitor(felipe, ec_orleans).
progenitor(ec_palatina, ec_orleans).
progenitor(leopoldo, francisco).
progenitor(ec_orleans, francisco).
progenitor(francisco, maria_antonieta).
progenitor(maria_tereza, maria_antonieta).

pai(X,Y) :- homem(X), progenitor(X,Y).
mae(X,Y) :- mulher(X), progenitor(X,Y).
avô(X,Z) :- homem(X), progenitor(X,Y), progenitor(Y,Z).
avó(X,Z) :- mulher(X), progenitor(X,Y), progenitor(Y,Z).
bisavô(X,Y) :- avô(Z,Y), pai(X,Z).
bisavó(X,Y) :- avó(Z,Y), mae(X,Z).