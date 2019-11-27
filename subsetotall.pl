% Helper predicate to check if one set is a subset of another
subsetof([], _).
subsetof([H|T], S) :-
  member(H, S),
  subsetof(T, S).

% Checks if a set is a subset of all given sets
subsetoall([], [[]]).
subsetoall(S, [H1|T1]) :-
  subsetof(S, H1),
  subsetoall(S, T1).
subsetoall(S, [H|[]]) :-
  subsetof(S, H).
