clc
clear

areaTrapecio(0,10,5,10);
miarea=integralEntre(@func , 0 , 10 , 0.000001 )

function y=func(x)
   y=x^2-9;
end

function area=integralEntre(func,x1,x2,tolerancia)
    xm=(x1+x2)/2;
    h1=func(x1);
    h2=func(x2);
    hm=func(xm);
    areaTrapecioGrande=areaTrapecio(x1,x2,h1,h2);
    areaTrapecioPequeno1=areaTrapecio(x1,xm,h1,hm);
    areaTrapecioPequeno2=areaTrapecio(xm,x2,hm,h2);
    diferencia=abs(areaTrapecioGrande-areaTrapecioPequeno1-areaTrapecioPequeno2);
    if diferencia<tolerancia
        area=areaTrapecioPequeno1+areaTrapecioPequeno2;
    else
        area=integralEntre(func,x1,xm,tolerancia)+ ...
             integralEntre(func,xm,x2,tolerancia);
    end
end

function area=areaTrapecio(x1,x2,h1,h2)
    base=x2-x1;
    hmedia=(h1+h2)/2;
    area=base*hmedia;
end