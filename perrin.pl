% The first three perrin numbers are already known
perrin(0, 3).
perrin(1, 0).
perrin(2, 2).

% Computes the nth perrin number
perrin(SeqNum, Value) :-
  SeqNum > 2,
  S1 is SeqNum - 2,
  S2 is SeqNum - 3,
  perrin(S1, V1), perrin(S2, V2),
  Value is V1 + V2.
