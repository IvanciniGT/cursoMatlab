m=crearMatrizRara(10,5,20,-1);
m2=recorrido(m,@procesado);
m2

c1=crearMatrizConCuadrados(500,100);
b1=recorrido(c1,@identificarBordes);

colormap(jet(2));
figure;
imshow(c1);
figure;
imshow(b1);
global matriz_objeto;
matriz_objeto=zeros(size(b1));
identificarObjeto(b1,2,250);
figure;
imshow(matriz_objeto);

function otra_matriz=recorrido(matriz,func)
    [filas,columnas]=size(matriz);
    otra_matriz=zeros( filas,columnas );
    for fila=[1:filas]    
        for columna=[1:columnas]
            otra_matriz(fila,columna)=func(matriz,fila,columna);
        end
    end
end

function valor=identificarBordes(matriz, fila,columna)
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
    % 0 Si todos son iguales
    % 1 Si al menos hay 1 diferente
    suma=abs(sum(submatriz,'all'));
    if suma==0 || suma==(columna_hasta-columna_desde+1)*(fila_hasta-fila_desde+1)
        valor=0;
    else
        valor=1;
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

function matriz=crearMatrizConCuadrado(n,margen)
    matriz=zeros(n);
    matriz(margen+1:n-margen,margen+1:n-margen)=1;
end

function matriz=crearMatrizConCuadrados(n,margen)
    matriz=zeros(n);
    matriz(margen+1:n-margen,margen+1:n-margen)=1;

    matriz(1:margen-10,5:n-5)=1;

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


function identificarObjeto(matriz_original,fila,columna)
    [alto,ancho]=size(matriz_original);
    %Si un punto ya lo he procesado, paso de él	
    global matriz_objeto;
    if matriz_objeto(fila,columna) ~=1 && matriz_original(fila,columna)~=1%Si un punto es un uno, paso de él													
        matriz_objeto(fila,columna) =1; %Si un punto es un cero, lo copio a la otra		
        if columna~=1
            identificarObjeto(matriz_original,fila,columna-1);%IZQUIERDA
        end
        if columna~=ancho
            identificarObjeto(matriz_original,fila,columna+1);%DERECHA
        end
        if fila~=1
            identificarObjeto(matriz_original,fila-1,columna);%ARRIBA
        end
        if fila~=alto
            identificarObjeto(matriz_original,fila+1,columna);%ABAJO
        end
    end
end

