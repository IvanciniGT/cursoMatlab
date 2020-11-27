factorial(5) % Tendria que salir 120

function resultado=factorial(numero)
    resultado=1;
    while numero>1
        resultado=resultado*numero; % 1*5*4*3*2
        numero=numero-1;
    end
end