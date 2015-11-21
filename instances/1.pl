% Solution: right(r)

% Cars
car(r, h, 2).

% Initial situation
holds(F,s0) :-
	member(
		F,
		[
			at(r,3,3)]).
