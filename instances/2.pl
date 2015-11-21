% Solution: down(y); right(r)

% Cars
car(r, h, 2).
car(y, v, 3).

% Initial situation
holds(F,s0) :-
	member(
		F,
		[
			at(y,6,1),
			at(r,3,3)]).
