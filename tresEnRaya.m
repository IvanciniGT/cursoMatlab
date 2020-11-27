%TABLERO1 = [ 0 0 0 ; 0 0 0 ; 0 0 0 ];
%length(find(TABLERO1==0))

%TABLERO2 = [ 1 1 1 ; 2 0 2 ; 1 2 0 ];
%length(find(TABLERO2==0))

%TABLERO3 = [ 1 2 1 ; 2 2 2 ; 2 2 2 ];
%length(find(TABLERO3==0))

%comprobarSiHay3EnRaya(TABLERO1)
%comprobarSiHay3EnRaya(TABLERO2)
%comprobarSiHay3EnRaya(TABLERO3)
%pintarTablero(TABLERO2);
%NO hay 3 en raya
%SI hay 3 en raya: DE QUIEN
partida3EnRaya();

function partida3EnRaya()
    tablero = [ 0 0 0 ; 0 0 0 ; 0 0 0 ];
    % Primer jugador juega con X
    turno=randi(2); % Valdrá 1 o 2... El 1 es quién Ordenador. El 2 soy YO
    while length(find(tablero==0))>0 %  haya hueco
        pintarTablero(tablero);
        %coloco Fichas
            if turno == 1
                % coloca el ordenador
                while 1
                    fila=randi(3);
                    columna=randi(3);
                    if tablero(fila,columna)==0
                        tablero(fila,columna)=1;
                        break;
                    end
                end
            else
                % coloca el usuario
                while 1
                    eleccion=input("Donde pones (1-9)? ");
                    fila=floor((eleccion-1)/3)+1;
                    columna=mod(eleccion+2,3)+1;
                    if tablero(fila,columna)==0
                        tablero(fila,columna)=2;
                        break;
                    else
                        fprintf("Esa celda está ocupada.\n")
                    end
                end
            end
        %mirar si hay 3 en raya
            resultado=comprobarSiHay3EnRaya(tablero);
            if resultado ~=0
                break;
                % Si hay 3 en raya ??? ACABADO !!!!! Ya hay ganador
            end
        % Si no hay 3 en raya
            % cambio turno y sigo jugando
            turno=3-turno;
    end
    
    switch(resultado)
        case 0
            fprintf("Hemos empatado\n");
        case 1
            fprintf("He ganado yo\n");
        case 2
            fprintf("Has ganado tu\n");
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
    resultado=0; % Suposición
    if tablero(1,1)==tablero(2,2) && tablero(1,1)==tablero(3,3)
        resultado=tablero(1,1);
    elseif tablero(1,3)==tablero(2,2) && tablero(1,3)==tablero(3,1)
        resultado=tablero(1,3);
    end
end