%fprintf("TEXTO A FORMATEAR", valoreS que incluir en el texto a formatear)
% para formatear un numero entero:  %d
% para formatear un numero decimal: %f
% para formatear un texto         : %s

%%fprintf("Aqui va un texto %s, despues va un entero %d, y por ultimo un decimal %f.\n","TEXTO",76,9.87);

eleccion=6;

fila=2;
columna=3;

% 1  2  3
% 4  5  6
% 7  8  9

% Celda 1, 2, 3   --> FILA 1
% Celda 4, 5, 6   --> FILA 2
% Celda 7, 8, 9   --> FILA 3
if eleccion>6
    fila=3;
elseif eleccion>3
    fila=2;
else
    fila=1;
end

%clc
eleccion=input("Que celda quieres? ");
fila=floor((eleccion-1)/3)+1
columna=mod(eleccion+2,3)+1
%  Celda            % Resultado de la división entera entre 3    % Resto
%   1                     0                                         1
%   4                     1                                         1
%   7                     2                                         1

%   2                     0                                         2
%   5                     1                                         2
%   8                     2                                         2

%   3                     1                                         0
%   6                     2                                         0
%   9                     3                                         0

%celda=9;
%columna=mod(celda+2,3)+1



