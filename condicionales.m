mayor(25,20)         % Por pantalla saldrá el resultado
mayorDe3(25,20,40)   % Por pantalla saldrá el resultado
factorial(5)         % 120

function el_mayor = mayor(numero1, numero2)
   % Le explico que debe enternder el ordenador por "mayor"
   % Si numero1 es mayor que numero2,devuelvo numero1
   if numero1>numero2      % SELECTORES DE FLUJO
        el_mayor=numero1;  % ACCION
   % Si no, devuelvo el numero2
   else                    % SELECTORES DE FLUJO
        el_mayor=numero2;  % ACCION
   end
end

function el_mayor = mayorDe3(numero1,numero2,numero3)
    el_mayor=mayor(mayor(numero1,numero2), numero3);
end

function resultado = factorial(numero)
    if numero==0
        resultado=1;
    else
        resultado = numero * factorial( numero - 1 );
    end
end

