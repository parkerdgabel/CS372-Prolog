% Empty list and list with one element, there is nothing to do
print246etc([]).
print246etc([_]).

% Iterate over the list
print246etc(L) :-
  iterateList(L, 1).

% Base case of an empty list
iterateList([], _).

% If this is an odd index, just move on
iterateList([_|T], I) :-
  I mod 2 =:= 1,
  iterateList(T, I + 1).

% If the index is less than or equal to 1 just move past it
iterateList([_|T], I) :-
  I =< 1,
  iterateList(T, I + 1).

% If this is an even index, print it
iterateList([H|T], I) :-
  I >= 2,
  I mod 2 =:= 0,
  write_ln(H),
  iterateList(T, I + 1).
