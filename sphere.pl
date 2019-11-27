% The area of a sphere with a radius 0 has an area 0
spherearea(0, 0).

% Computes the surface area of a sphere
spherearea(Radius, Area) :- 
  Radius > 0, 
  R2 is Radius * Radius, 
  Area is 4 * pi * R2.

% The volume of a sphere with radius 0 is 0
spherevolume(0,0).

% Computes the volume of a sphere
spherevolume(Radius, Area) :-
  Radius > 0,
  spherearea(Radius, A),
  Area is (A * Radius) / 3.

