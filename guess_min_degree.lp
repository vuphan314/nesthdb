N { abs(X) : p(X) } N :- b(N).
:~ D = #count{ Y: edge(X,Y); Y: edge(Y,X) }, abs(X). [D,X]
#show abs/1.
