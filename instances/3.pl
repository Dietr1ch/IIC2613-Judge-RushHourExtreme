% Solution: left(o); down(y); right(r)

% Cars
car(r, h, 2).
car(y, v, 3).
car(o, h, 2).

% Initial situation
holds(F,s0) :-
	member(
		F,
		[
			at(o,5,5),
			at(y,6,1),
			at(r,3,3)]).
