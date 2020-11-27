
%sigueJugando="s";
%while sigueJugando == "s" || sigueJugando == "si"
%while 1 % Por siempre jamás
jugarPartida()
function jugarPartida()
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
    
    sigueJugando=input("Quieres echar otra? ","s");
    if sigueJugando == "s" || sigueJugando == "si"
        jugarPartida()
        %break %rompe el bucle
    end
end