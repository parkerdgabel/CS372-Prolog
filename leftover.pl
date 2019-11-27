% Cannot divide by zero. We must yell at the user!
leftover(_, 0, _) :-
  write("ERROR: leftover/3: Arithmetic: evaluation error: ‘zero_divisor’\n").

% If the dividend is less than the divisor, then the remainder is the dividend
leftover(Dividend, Divisor, Remainder) :-
  Dividend < Divisor,
  Remainder is Dividend.

% Otherwise, subtract the Divisor from the Dividend and try again
leftover(Dividend, Divisor, Remainder) :-
  Dividend >= Divisor,
  Q is Dividend - Divisor,
  leftover(Q, Divisor, Remainder).



