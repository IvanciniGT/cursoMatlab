% Comentarios
% Cualquier cosa escrita detrás de un porcentaje, se ignora por el
% ordenador.

% Valores
6 % Es un número entero
6.1 % Es un número decimal
'Esto es un texto' % Es un texto
[ 1 2 3 4 5] % Esto es una matriz de 1 dimensión

% Asignar una variable
numero=7 % Escribe el 7 en la RAM, genera una variable llamada 'numero' y 
         % asigna a la variable al valor 7
% Usar una variable
numero % En este caso, el ordenador reemplaza al ejecutar el programa
       % el nombre de la variable por el valor al que referencia.
       
% Operadores numéricos
% REQUIEREN: un número a cada lado
% DEVUELVEN: un número
3+5 % Me permite hacer una suma
3 + 5 % Esto es lo mismo que lo anterior
3 + numero % Esto daría 10
% otros operadores numéricos: + - * /
% ^ Potencia
2^3 % Dos elevado a 3
3\2 % Es la división, pero al revés. Esto sería igual a 2/3

% Agrupación de operadores y prioridades
3 + 5 * 2 % Esto daría 13, ya que el operador * tiene una prioridad mayor que la suma
( 3 + 5 ) * 2 % Los parentesis me permiten agrupar y cambiar prioridades

% Operadores de comparación: Son preguntas que haceis al ordenador
% REQUIEREN: a cada lado un VALOR
% DEVUELVE: Un valor lógico: 
%    0  -  NO
%    1  -  SI
% Operador comparación, igualdad ==
% ERROR: numero = 7
% Sólo un igual en el lenguaje MATLAB, no es el operador IGUAL DE
% IGUALDAD, sino es el operador ASIGNACION
4 == 5 % El mira si lo que hay acada lado es igual entre si -> NO: 0
4 == (7-3) % El mira si lo que hay acada lado es igual entre si -> SI: 1

% Operador distinto 
3 ~= 4 % Devolvería: SI - 1

% Operadores DE COMPARACIÓN: > < >= <=
3>=2 % SI : 1

% Operadores LOGICOS
% DEVUELVE: Un valor lógico: 
%    0  -  NO
%    1  -  SI
% REQUIEREN: Valores lógicos, 1 o 2, depende del operador
% Que requieren 2 valores lógicos:
    % Y lógico: Equivalente al castellano el texto 'y'
        % llueve y truena
3>5 & 4<7
%    Llueve    Y     Truena          Me quedo en casa
%  IZQUIERDA   &     DERECHA   =>    RESULTADO
%      1               1                 1 SI
%      1               0                 0 NO
%      0               1                 0 NO
%      0               0                 0 NO
    % Y lógico en cortocircuito <<<<<<<
    % Similar al anterior, y el que más se usa. La diferencia, es que no se
    % evalua la segunda condición, si la primera NO SE CUMPLE.
x~=0 && 10/x < 1  
%  IZQUIERDA   &&     DERECHA   =>    RESULTADO
%      1               1                 1 SI
%      1               0                 0 NO
%      0                                 0 NO
% existe('RUTA') && tamanoFichero('RUTA') > 1024
    % O lógico |
%    Llueve    O     Truena          Me quedo en casa
%  IZQUIERDA   |     DERECHA   =>    RESULTADO
%      1               1                 1 SI
%      1               0                 1 SI
%      0               1                 1 SI
%      0               0                 0 NO

    % O lógico en cortocircuito <<<<<<< ||
%    Llueve     O     Truena          Me quedo en casa
%  IZQUIERDA   ||     DERECHA   =>    RESULTADO
%      1                                 1 SI
%      0               1                 1 SI
%      0               0                 0 NO
% Que requieren 1 valor lógicos:
    % NO ~ (lo contrario)
    ~(3>2) % NO: 0
    3>2    % SI: 1

% ACCIONES QUE PUEDE HACER EL ORDENADOR 
% VERBOS: ACCIONES
% 1 tipo de verbos: OPERADORES: SUMA, MULTIPLICA
% Otro tipo de verbos: FUNCIONES: 
% fprintf: SIGNIFICA: Pon algo en la pantalla
% mean: Calcula una media

% Para llamar a una función (pedir que se ejecute), la sintaxis que utilizamos es:
% NOMBRE_FUNCION( argumentos )<- Sobre lo que opera la función
mean( [ 1 2 3 4 5 6 ] ) % Devolvería la media: 3.5
fprintf(  'Texto que debe mostrarse por pantalla'  )

% Como definir nuestra propia función
% function (lo que devuelve la función) = nombre de la funcion ( definir los argumentos)
%     Le explico al ordenador en que consiste esta accion
% end

doblar(10)

%Importancia del PUNTO Y COMA al final de una linea
% Si no pongo el PUNTO Y COMA: MATLAB va a asacar por pantalla en resultado
% de la operación / ejecución
% SI SI pongo el PUNTO y COMA: MATLAB va a hacer la operación, pero no va a
% mostrar nada por pantalla

function resultado= doblar(numero)
    resultado=numero * 2;
end