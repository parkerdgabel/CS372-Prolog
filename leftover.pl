leftover(_, 0, _) :-
  write("ERROR: leftover/3: Arithmetic: evaluation error: ‘zero_divisor’\n").

leftover(Dividend, Divisor, Remainder) :-
  Dividend < Divisor,
  Remainder is Dividend.

leftover(Dividend, Divisor, Remainder) :-
  Dividend >= Divisor,
  Q is Dividend - Divisor,
  leftover(Q, Divisor, Remainder).



