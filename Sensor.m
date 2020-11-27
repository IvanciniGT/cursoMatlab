%global mediciones;
%global temperaturas;
%mediciones=[12 14 16.2 18.3 19.9 22.1];
%temperaturas=[0:5:25];

inicializarSensor();
pintarCurvaSensor()
calcularTemperatura(15)
%guardarDatos();
function guardarDatos()
    global mediciones;
    global temperaturas;
    csvwrite("C:\Users\Admin\Documents\MATLAB\datos.csv",[ temperaturas; mediciones]);
end
function inicializarSensor()
    global mediciones;
    global temperaturas;
    datos=csvread("C:\Users\Admin\Documents\MATLAB\datos.csv");
    mediciones=datos(2,:);
    temperaturas=datos(1,:);
end

function temperatura=calcularTemperatura(medicion)
    global mediciones;
    global temperaturas;
    if medicion < min(mediciones)  || medicion > max(mediciones)
        error("Fuera de rango");
    else
        temperatura=interp1(mediciones,temperaturas,medicion);
    end
end

function pintarCurvaSensor()
    global mediciones;
    global temperaturas;
    plot(mediciones,temperaturas,"md-.");
end