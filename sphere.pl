spherearea(0, 0).

spherearea(Radius, Area) :- 
  Radius > 0, 
  R2 is Radius * Radius, 
  Area is 4 * pi * R2.

spherevolume(0,0).

spherevolume(Radius, Area) :-
  Radius > 0,
  spherearea(Radius, A),
  Area is (A * Radius) / 3.

