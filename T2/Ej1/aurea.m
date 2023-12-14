function [optimo,valor,nit,conver]=aurea(fun,a,b,maxiter,toler)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Aproxima el óptimo (mínimo) de una función unimodal en un intervalo
% usando el método de la sección áurea
% Datos
% -----
% fun = función para buscarle el mínimo
% [a,b] = intervalo inicial
% maxiter = numero máximo de iteraciones admitidas
% toler = tolerancia de parada
%--------------------
% Se ha de tener la función:
% fun.m función y=fun(x) donde se define la función a optimizar
%--------------------------------------------------------------------
% Argumentos de salida:
%--------------------------------------------------------------------
% optimo = óptimo aproximado
% valor = valor de la función en el óptimo aproximado
% nit = iteraciones realizadas hasta alcanzar la tolerancia
% conver = 1 si se alcanza la tolerancia
% = 0 si no se alcanza la tolerancia en las iteraciones dadas.
%--------------------------------------------------------------------


alpha=(-1+sqrt(5))/2;
y=a+(1-alpha).*(b-a);
z=a+alpha.*(b-a);
fy=fun(y);
fz=fun(z);

conver=false;
optimo=0;
valor=0;


for nit=1:maxiter
    if (b-a)< toler
        if fy<fz
            optimo=y;
            valor=fy;
            conver=true;
            return
        else
            optimo=z;
            valor=fz;
            conver=true;
            return
        end
    end
     if fy<fz
            b=z;
            z=y;
            y=a+(1-alpha).*(b-a);
            fz=fy;
            fy=fun(y);
     else
            a=y;y=z;
            z=a+alpha.*(b-a);
            fy=fz;
            fz=fun(z);
     end

  
end



   





