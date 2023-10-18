function [xf,iter,norma,salida]=...
SNLbroyden(fun,jacobiana,x0,itermax,tol,detalle)
%------------------------------------------------------------
% Metodo de Broyden para sistemas de ecuaciones
 %------------------------------------------------------------
 % Argumentos de entrada
 %------------------------------------------------------------
 % fun = función vectorial que define el sistema (f(x)=0)
 % jacobiana = jacobiana de la función f
 % x0 = vector inicial
 % itermax = numero máximo de iteraciones admitidas
 % tol = tolerancia de parada
 % detalle = 0 No se muestran las iteraciones
 % = 1 Se muestran las iteraciones
 %--------------------
 % Se han de tener las funciones:
 % fun.m funcion y=fun(x) donde se define el sistema
 % jacobiana.m funcion J=jacobiana(x) donde se define la matriz
 % jacobiana del sistema, o una aproximación suya
 %
 %-------------------------------------------------------------
 % Argumentos de salida:
 %-------------------------------------------------------------
 % x = solución aproximada
 % iter = iteraciones realizadas hasta alcanzar la tolerancia
 % norma = norma de la diferencia de las dos últimas iteraciones
 % salida = 1 si se alcanza la tolerancia
 % = 0 si no se alcanza la tolerancia en las iteraciones dadas.
 %-------------------------------------------------------------

 %Inicialización de variables

 xf=0;
 iter=0;
 norma=0;
 salida=0;

 % Preparamos la función y su jacobiano
 %Hecho

 %Implementamos el método de Broyden

 A=jacobiana(x0);
 inver=inv(A);
 f0=fun(x0);
 f0=f0';
 b=-inver*f0;
 x=x0'+b;
 norma=norm(b,'inf');


 for k=1:itermax
     if norma <= tol
         xf=x;
         iter=k;
         return
     end
      if detalle==1
        disp("Iteraciones, x, norma")
        disp(iter)
        disp(x)
        disp(norma)
      end

     F1=fun(x);
     F1=F1';
     
     
     y=inver*(F1-f0);
     inver=inver+(b-y)*((b'*inver))./(b'*y);
     b=-inver*F1;    
     x=x+b;
     f0=F1;
     norma=norm(b,'inf');
 end
















