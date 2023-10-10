function [xf,nit,norma,conver]=...
            newtonsis(fun,jacfun,x0,maxiter,toler,detalle)

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Método de Newton para sistemas de ecuaciones
 %-------------------------------------------------------------------
 % Argumentos de entrada
 %-------------------------------------------------------------------
 % fun = función vectorial que define el sistema (f(x)=0)
 % jacfun = jacobiano de la función f
 % x0 = vector inicial
 % maxiter = numero maximo de iteraciones admitidas
 % toler = tolerancia de parada
 % detalle = 0 No se muestran las iteraciones
 % = 1 Se muestran las iteraciones
 %--------------------
 % Se han de tener las funciones:
 % fun.m donde se define el sistema
 % jacfun.m donde se define la matriz jacobiana del sistema.
 %
 %--------------------------------------------------------------------
 % Argumentos de salida:
 %--------------------------------------------------------------------
 % x = solución aproximada
 % nit = iteraciones realizadas hasta alcanzar la tolerancia
 % norma = norma de la diferencia de las dos últimas iteraciones
 % conver = 1 si se alcanza la tolerancia
 % = 0 si no se alcanza la tolerancia en las iteraciones dadas.
 %--------------------------------------------------------------------

 %Inicialicemos variables:

 xf=0;
 nit=0;
 norma=0;
 conver=0;
%Declaramos el bucle

for nit=1:maxiter
    x=fun(x0);
    jacy=jacfun(x0);
    y=-inv(jacy)*x';
    x0=x0+y';
    disp(x0)
    norma=norm(y,'inf');
    if detalle==1
        disp("Iteraciones, x, norma")
        disp(nit)
        disp(x0)
        disp(norma)
    end
    if norma<toler
        xf=x0;
        conver=1;
        return
    end
        


    
end



