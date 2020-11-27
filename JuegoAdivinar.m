
%sigueJugando="s";
%while sigueJugando == "s" || sigueJugando == "si"
%while 1 % Por siempre jamás
jugar(@juegoPiedraPapelTijera)

function jugar(juego)
    while 1
        juego()

        sigueJugando=input("Quieres echar otra? ","s");
        if sigueJugando ~= "s" && sigueJugando ~= "si"
            break %rompe el bucle
        end
    end
end



function juegoPiedraPapelTijera()
    jugadasGanadas=[ 0 0 ];
    while jugadasGanadas(1)<2 && jugadasGanadas(2)<2
        quienEsElGanador=jugadaPiedraPapelTijera();
        if quienEsElGanador > 0
            jugadasGanadas(quienEsElGanador)=jugadasGanadas(quienEsElGanador)+1;
        end
    end
    if jugadasGanadas(1) == 2
        fprintf("He ganado YO\n ");
    else
        fprintf("Has ganado TU\n");
    end
end




function ganador=jugadaPiedraPapelTijera()
    OPCIONES=[ "Piedra" "Papel" "Tijera" ];
    GANADOR=[ 0 1 2 ; 2 0 1 ; 1 2 0 ];
    
    eleccionOrdenador=randi(3);
    
    eleccionUsuarioComoTexto=input("Piedra, papel o Tijera? ","s"); % piedra papel tijera
    eleccionJugador=0;
    for posicion=[1 2 3]
        if lower(eleccionUsuarioComoTexto) == lower(OPCIONES(posicion))
            eleccionJugador=posicion;
        end
    end
    
    if eleccionJugador ~=0
        ganador=GANADOR(eleccionJugador,eleccionOrdenador);
        fprintf("Yo he sacado: %s\n",OPCIONES(eleccionOrdenador));
        RESULTADOS=[ "Hemos empatado\n" "He ganado yo\n" "Has ganado!\n" ];
        fprintf(RESULTADOS(ganador+1));
    else 
        fprintf("Eso no vale... Tienes que elegir entre PIERDRA, PAPEL o TIJERA!!!!")
        ganador=jugadaPiedraPapelTijera();
    end
   
end
function juegoAdivinar()
    numeroParaAdivinar=randi(20);
    vidas=3;
    numeroDelUsuario=-1;

    while vidas>0 && numeroDelUsuario ~= numeroParaAdivinar
        numeroDelUsuario=input("Dime un número: ");
        if numeroDelUsuario ~= numeroParaAdivinar
            desviacion=abs(numeroDelUsuario-numeroParaAdivinar);
            if desviacion > 6
                fprintf(" Frio!!!!\n");
            elseif desviacion > 2
                fprintf(" Templado!!!!\n");
            else
                fprintf(" Caliente!!!!\n");
            end
            vidas=vidas-1;
        end
    end

    if vidas == 0
        fprintf("Has perdido!!!!\n");
    else
        fprintf("Has ganado!!!!\n");
    end
    
end