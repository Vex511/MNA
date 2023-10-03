function [x,nit,norma,salida]=...
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



%Definimos variables.
x=x0;%me dan un vector columna.
nit=0;
%método se refiere a si calcular newton normal o que se actualice.
if metodo == 0
%Método de Jacobi. Evaluamos la f anteriores
for k=1:numel(x0)
    x=fung(x);
    nit=nit+1;
    if detalle ==1
            fprintf(x)
    end
    if norm(x-x0,"inf")<= toler
        norma=norm(x(k+1)-x(k),"inf");
        salida=x(k);
   
        return
    end

    if nit==maxiter
           norma=norm(x(k+1)-x(k),"inf");
           salida=x(k);
        return
    end
    

end
end

%Metodo de Gaus Seidel
if metodo ==1
for k=1:numel(x0)
    for m=1:numel(x0)
        x(k+1,m+1)=fung(x,m);
        nit=nit+1;
    end
    if norm(x(k+1)-x(k),"inf")<= toler
        return
    end

    if nit==maxiter
        return
    end

   
end
end
















