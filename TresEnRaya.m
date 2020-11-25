
TABLERO1 = [ 0 0 0 ; 0 0 0 ; 0 0 0 ];
TABLERO2 = [ 1 1 1 ; 2 0 2 ; 1 2 0 ];
TABLERO3 = [ 1 2 1 ; 2 0 2 ; 2 2 2 ];
comprobarSiHay3EnRaya(TABLERO1)
comprobarSiHay3EnRaya(TABLERO2)
comprobarSiHay3EnRaya(TABLERO3)
pintarTablero(TABLERO2);
%NO hay 3 en raya
%SI hay 3 en raya: DE QUIEN

function partida3EnRaya()
    tablero = [ 0 0 0 ; 0 0 0 ; 0 0 0 ];
    % Primer jugador juega con X
    turno=randi(2); % Valdrá 1 o 2... El 1 es quién Ordenador. El 2 soy YO
    while 1 % no haya 3 en raya YYYYYYYYY haya hueco
        %coloco Fichas
            % coloca el ordenador
            % coloca el usuario
        %mirar si hay 3 en raya
        % Si hay 3 en raya ??? ACABADO !!!!! Ya hay ganador
        % Si no hay 3 en raya
            % cambio turno y sigo jugando
            turno=3-turno;
    end
end



function pintarTablero(tablero)
    representacion = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ]; 
    for fila=[1 2 3]
        for columna=[1 2 3]
            if tablero(fila,columna)==1
                representacion(fila,columna)="X";
            elseif tablero(fila,columna)==2
                representacion(fila,columna)="O";
            end
        end
    end
    
    
    clc
    fprintf(" %s | %s | %s \n", representacion(1,1) , representacion(1,2) , representacion(1,3) );
    fprintf("-----------\n");
    fprintf(" %s | %s | %s \n", representacion(2,1) , representacion(2,2) , representacion(2,3) );
    fprintf("-----------\n");
    fprintf(" %s | %s | %s \n", representacion(3,1) , representacion(3,2) , representacion(3,3) );
end





function resultado=comprobarSiHay3EnRaya(tablero)
    resultado=comprobarSiHay3EnRayaHorizontal(tablero);
    if resultado == 0
        resultado=comprobarSiHay3EnRayaVertical(tablero);
        if resultado == 0
            resultado=comprobarSiHay3EnRayaDiagonal(tablero);
        end
    end
end

function resultado=comprobarSiHay3EnRayaHorizontal(tablero)
    resultado=0; % Suposición
    for indice_fila=[1:3]
        %             Celda 1 sea igual a la 2            Y           Celda 1 sea igual a la 3
        if tablero(indice_fila,1)==tablero(indice_fila,2) && tablero(indice_fila,1)==tablero(indice_fila,3)
            resultado=tablero(indice_fila,1);
        end
    end   
end
function resultado=comprobarSiHay3EnRayaVertical(tablero)
    resultado=0; % Suposición
    for indice_columna=[1:3]
        %             Celda 1 sea igual a la 2            Y           Celda 1 sea igual a la 3
        if tablero(1,indice_columna)==tablero(2,indice_columna) && tablero(1,indice_columna)==tablero(3,indice_columna)
            resultado=tablero(1,indice_columna);
        end
    end   
end
function resultado=comprobarSiHay3EnRayaDiagonal(tablero)
    if tablero(1,1)==tablero(2,2) && tablero(1,1)==tablero(3,3)
        resultado=tablero(1,1);
    elseif tablero(1,3)==tablero(2,2) && tablero(1,3)==tablero(3,1)
        resultado=tablero(1,3);
    end
end
