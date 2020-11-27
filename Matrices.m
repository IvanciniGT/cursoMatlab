matriz=[ 12 76 35 ];
matriz(3)

matriz=[ "A" "B" "C"];
matriz(3)

matriz=[ "A" "B" "C"; "D" "E" "F"];

matriz(1,2)

%                  ORDENA 1
%           PIEDRA    PAPEL    TIJE
%    PIEDRA   0         1        2
%    PAPEL    2         0        1
%    TIJERA   1         2        0
%  YO = 2
GANADOR=[ 0 1 2 ; 2 0 1 ; 1 2 0 ];
GANADOR(3, 2)

matriz=[ "A" "B" "C"];
for elemento=matriz
    fprintf("Ahora estoy sacando el elemento: %s\n", elemento);
end

[ 1:3:20 ]

OPCIONES=[ "Piedra" "Papel" "Tijera" ];
eleccionUsuarioComoTexto="TiJerA"; %2
eleccionJugador=0;
for posicion=[1 2 3]
    if lower(eleccionUsuarioComoTexto) == lower(OPCIONES(posicion))
        eleccionJugador=posicion;
    end
end
if eleccionJugador==0
    fprintf("No te enteras manolete....");
end
eleccionJugador



matriz=[ 1 2 3 1 2 3 5 6 ];
matriz==3
matriz>2
length(find(matriz==7))
length(matriz)



