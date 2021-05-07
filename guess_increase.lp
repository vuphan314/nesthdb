M { abs(X) : p(X)} B :- M = #min{ 8; B}, b(B).

% abs is in its own bucket
bucket(X,X) :- abs(X).

% eat non-abs neighbors of abs bucket
bucket(X,Y) :- not abs(Y), abs(X), edge(Y,X).
bucket(X,Y) :- not abs(Y), abs(X), edge(X,Y).

% eat neighbors of eaten non-abs neighbors
bucket(B,Z) :- bucket(B,Y), not abs(Y), edge(Y,Z).
bucket(B,Z) :- bucket(B,Y), not abs(Y), edge(Z,Y).

% induced edges
:~ X < Y, abs(Y), bucket(X,Y). [1,X,Y]

% direct edges
:~ abs(X), abs(Y), edge(X,Y). [1,X,Y]

:~ abs(X), #count{ Y: abs(Y), bucket(X,Y); Y: abs(Y), edge(X,Y); Y: abs(Y), edge(Y,X)  } <= 4. [-1,X]

#show abs/1.
