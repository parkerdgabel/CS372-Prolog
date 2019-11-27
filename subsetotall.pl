subsetof([], _).
subsetof([H|T], S) :-
  member(H, S),
  subsetof(T, S).

subsetoall([], [[]]).
subsetoall(S, [H1|T1]) :-
  subsetof(S, H1),
  subsetoall(S, T1).
subsetoall(S, [H|[]]) :-
  subsetof(S, H).
