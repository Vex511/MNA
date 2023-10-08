function [xf,nit,norma,salida]=...
    sisnolin_puntofijo(fung,x0,metodo,maxiter,toler,detalle)
%--------------------------------------------------------------------
%% Aproxima el punto fijo de una función vectorial fung(x)
% usando el método de punto fijo (opción Jacobi o Gauss-Seidel)
% Datos
% -----
% fung = función vectorial para buscarle el punto fijo
% x0 = vector inicial
% metodo = 1 (Jacobi)
% = 2 (Gauss-Seidel)
% maxiter = numero máximo de iteraciones admitidas
% toler = tolerancia de parada
% detalle = 0 No se muestran las iteraciones por pantalla
% = 1 Se muestran las iteraciones por pantalla
%--------------------
% Se ha de tener la función:
% fung.m función y=fung(x) donde se define la función
% de punto fijo
%--------------------------------------------------------------------
% Argumentos de salida:
%--------------------------------------------------------------------
% x = punto fijo aproximado
% nit = iteraciones realizadas hasta alcanzar la tolerancia
% norma = norma de la diferencia de las dos últimas iteraciones
% salida = 1 si se alcanza la tolerancia
% = 0 si no se alcanza la tolerancia en las iteraciones dadas.
%--------------------------------------------------------------------
%Inicializamos la salida:


xf=0;
norma=0;
nit=0;
salida=0;

%método se refiere a si calcular newton normal o que se actualice.

%Método de Jacobi. Evaluamos la f anteriores en el vector x0, después f(x0)
%pasa a ser el nuevo x. (Definición del método del punto fijo)

% Debemos poner la condición de que pare si llega al número de iteraciones
% o llega a la tolerancia. Es menos restrictiva la de que llegue al número
% de iteraciones así que la pondremos antes que la de la norma. 


for nit=1:maxiter
    if metodo == 1
    x1=fung(x0);
    norma=norm((x0-x1),"inf");
    if detalle==1
        disp("Iteraciones, x, norma")
        disp(nit)
        disp(x1)
        disp(norma)
    end

    if norma < toler
        xf=x1;
        salida=1;
        return
    else
        x0=x1;
    end
    
%Ahora el método de Gauss Seidel. En este método actualizamos los
%coeficientes que vamos calculando a medida que se hacen los cálculos. Así
%este es algo más complejo de implementar porque ya contamos con sustituir
%componente a componente.

    elseif metodo ==2

    p=length(x0);
    for j= 1:p
        x1=fung(x0);
        x0(j)=x1(j);
    end
          norma=norm((x0-x1),"inf");

        if detalle==1
        disp("Iteraciones, x, norma")
        disp(nit)
        disp(x1)
        disp(norma)
        end

    if norma < toler
        xf=x1;
        salida=1;
        return
    else
        x0=x1;
    end
    end
end
end

