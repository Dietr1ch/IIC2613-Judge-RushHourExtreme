% Rush Hour, parte 2
% [Nombre y Apellido]
% [Número de alumno]


% Parte 2
% =======
%  * Calculo de Situaciones
%  * Definición del Rush Hour
%  * Las 7 instancias.
%  * Las 2 Heurísticas no triviales.
%  * A*
%  * Cualquier cosa auxiliar que necesiten


problema(N):-
    print(N),
    % (Resolver problema N con h_1 y reportar expansiones).
    % (Resolver problema N con h_2 y reportar expansiones).
    true.

% Output esperado al preguntar por problema(1). (""%% " es para la 'cita')
%% 1:
%% Heurística 1: 123456 expansiones.
%% [solución 1]
%% Heurística 2: 234 expansiones.
%% [solución 2]



% Pueden modificar el texto del output si lo consideran necesario, pero al menos
% deben estar el número del problema, y las cantidades de expansiones en líneas
% separadas.

% Output minimal:
%% 1
%% 123456
%% [solución 1]
%% 234
%% [solución 2]
