nombre_del_usuario=obtenerNombre;
saludoPersonalizado(nombre_del_usuario);
%saluda();

function saluda()
    fprintf("HOLA");
end

function nombre=obtenerNombre()
    nombre=input("Dame tu nombre: ","s");
end

function saludoPersonalizado(nombre)
    fprintf("HOLA %s",nombre);
end
