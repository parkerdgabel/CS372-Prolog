print246etc([]).
print246etc([_]).

print246etc(L) :-
  iterateList(L, 1).

iterateList([], _).

iterateList([_|T], I) :-
  I mod 2 =:= 1,
  iterateList(T, I + 1).

iterateList([_|T], I) :-
  I =< 1,
  iterateList(T, I + 1).

iterateList([H|T], I) :-
  I >= 2,
  I mod 2 =:= 0,
  write_ln(H),
  iterateList(T, I + 1).
