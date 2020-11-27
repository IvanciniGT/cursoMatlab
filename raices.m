calcularRaiz(@func ,-50 ,50, 0.000001) % 3.00000005

function resultado=func(x)
    resultado=x^2+3;
end

function raiz=calcularRaiz(funcion,x1,x2,precision)
    xmitad=(x1+x2)/2;
    if x2-x1 < precision
        raiz=xmitad;
    else
        func_x1=funcion(x1);
        func_x2=funcion(x2);
        func_xmitad=funcion(xmitad);
        if func_x1*func_xmitad <0 % Este es el intervalo donde esta la raiz
            raiz=calcularRaiz(funcion,x1,xmitad,precision);
        elseif func_xmitad*func_x2 <0 % Este es el intervalo donde esta la raiz
            raiz=calcularRaiz(funcion,xmitad,x2,precision);
        else
            % Aqui no puedo garantizar que haya raiz
            fprintf("No puedo garantizar que ahí haya una raiz.")
        end
    end
end
