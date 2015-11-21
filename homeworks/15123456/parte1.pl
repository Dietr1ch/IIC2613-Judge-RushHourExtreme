% Rush Hour, parte 1
% [Nombre y Apellido]
% [Número de alumno]


% Parte 1
% =======
%  * El archivo DEBE tener los ploceholders 'OBJECTS' y 'INITIAL_SITUATION' en vez de
%      problema en particular.
%  * Pueden usar parámetros adicionales para las acciones, pero el primero debe ser
%      el vehículo a mover.
%      Ejemplos:
%        - up(C).
%        - up(C, L).
%        - up(C, X, Y).
%        - up(C, X, Y, L).
%        - up(C, X, Y, L, ...).


% Utils
% =====
range(Z,X,Y) :- rangelist(X,Y,L),member(Z,L).

rangelist(X,Y,L) :- Y<X,!,rangelist(Y,X,Lp),reverse(Lp,L).
rangelist(X,X,[X]) :- !.
rangelist(X,Y,[X|Lp]) :- Xp is X+1, rangelist(Xp,Y,Lp).



% Objects (problem-specific)
% =======
% OBJECTS
% eg: car(Name, Dir, Length) :- member([Name, Dir, Legth],[[red,h,2],[yellow,v,3],[green,v,2],[brown,h,2]]).



% Actions up(C), left(C), down(C), right(C)
% =======
% Poss
% ----
% poss(a0, S).
% poss(a1, S).

% Positive effects +at(C, X, Y)
% -----------------
% is_positive_effect(f0, a1, S).
% is_positive_effect(f1, a0, S).

% Negative effects  -at(C, X, Y)
% ----------------
% is_negative_effect(f0, a1, S).
% is_negative_effect(f1, a0, S).



% Initial Situation
% =================
% INITIAL_SITUATION
% eg: holds(F,s0) :- member(F,[at(red,3,3),at(yellow,5,1),at(green,4,4),at(brown,5,5)]).


% holds(blocked(X,Y), S)
% ----------------------
% Blocked is defined axiomatically in terms of at
holds(blocked(0,Y),_):- rangelist(0,7,L), member(Y,L).
holds(blocked(X,0),_):- rangelist(0,7,L), member(X,L).
holds(blocked(7,Y),_):- rangelist(0,7,L), member(Y,L).
holds(blocked(X,7),_):- rangelist(0,7,L), member(X,L).
holds(blocked(X,Y),S) :- valid(X,Y),car(C,h,L),holds(at(C,Xp,Y),S),Xn is Xp+L-1, range(X,Xp,Xn).
holds(blocked(X,Y),S) :- valid(X,Y),car(C,v,L),holds(at(C,X,Yp),S),Yn is Yp+L-1, range(Y,Yp,Yn).


% Situation Calculus
% ==================
holds(F, do(A,S)) :-
    holds(F, S),
    \+ is_negative_effect(F, A, S).
holds(F ,do(A,S)) :-
    is_positive_effect(F, A, S).

%%%%% Legal Situations are those produced by executing
%%%%% generates situations in a breadth-first manner
legal(s0).
legal(do(A,S)) :-
    legal(S),
    poss(A,S).
