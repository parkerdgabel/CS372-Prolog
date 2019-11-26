elementat(0, [E|_], E).

elementat(I, [_|T], E) :-
  elementat(I1, T, E),
  I is I1 + 1.
