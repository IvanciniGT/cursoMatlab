m=crearMatrizRara(10,5,20,-1);
m2=recorrido(m,@procesado);
m2

function otra_matriz=recorrido(matriz,func)
    [filas,columnas]=size(matriz);
    otra_matriz=zeros( filas,columnas );
    for fila=[1:filas]    
        for columna=[1:columnas]
            otra_matriz(fila,columna)=func(matriz,fila,columna);
        end
    end
end

function valor=procesado(matriz, fila,columna)
    if matriz(fila,columna)~=0
        valor=matriz(fila,columna);
    else
        [alto,ancho]=size(matriz);
        fila_desde=fila-1;
        
        fila_hasta=fila+1;
        columna_desde=columna-1;
        columna_hasta=columna+1;
        if fila==1
            fila_desde=1;
        elseif fila==alto
            fila_hasta=fila;
        end
        if columna==1
            columna_desde=1;
        elseif columna==ancho
            columna_hasta=columna;
        end
        submatriz=matriz( fila_desde:fila_hasta, columna_desde:columna_hasta );
        valor=abs(sum(submatriz,'all'));
    end
end

function matriz=crearMatrizRara(ancho,alto,num_valores_azar,valor)
    %crear matriz con ceros
    matriz=zeros(alto,ancho);
    
    % poner un valor, un determinado numero de veces de forma aleatoria por
    % la matriz
    while num_valores_azar>0
        fila_al_azar     = randi(alto);
        columna_al_azar  = randi(ancho);
        if matriz(fila_al_azar,columna_al_azar)==0
            matriz(fila_al_azar,columna_al_azar)=valor;
            num_valores_azar=num_valores_azar-1;
        end
    end
end

%function otra_matriz=recorrido(matriz,func)
    %tamano=size(matriz);
    %otra_matriz=zeros( tamano );
%    for fila=[1:tamano(1)]    
%        for columna=[1:tamano(2)]
%            otra_matriz(fila,columna)=func(matriz,fila,columna);
%        end
%    end
%end
