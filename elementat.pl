% Element at index 0 is just the head of the list
elementat(0, [E|_], E).

% Get the element at the ith index
elementat(I, [_|T], E) :-
  elementat(I1, T, E),
  I is I1 + 1.
