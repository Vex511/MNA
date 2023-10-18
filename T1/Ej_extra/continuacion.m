function [xf,normres]=continuacion(fun,jacobiana,x0,M)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Metodo de continuación para sistemas de ecuaciones
 %------------------------------------------------------------
 % Argumentos de entrada
 %------------------------------------------------------------
 % fun = función que define el sistema (f(x)=0)
 % jacobiana = matriz jacobiana de fun
 % x0 = vector inicial
 % M = Número de pasos a usar en Runge-Kutta
 %-------------------------------------------------------------
 % Argumentos de salida:
 %-------------------------------------------------------------
 % x = solución aproximada
 % normres= norma infinito del residuo
 %-------------------------------------------------------------

 %Inicializamos
 xf=0;
 normres=0;
 %Empezamos programa
 h=1/M;
 fun0=fun(x0);
 x=x0;
 for k=1:M
     JF=jacobiana(x);
     k1=-inv(JF)*fun0';
     JF=jacobiana(x+(h/2)*k1);
     k2=-inv(JF)*fun0';
     JF=jacobiana(x+(h/2)*k2);
     k3=-inv(JF)*fun0';
     JF=jacobiana(x+h*k3);
     k4=-inv(JF)*fun0';
     x=x+(h/6).*(k1+2*k2+2*k3+k4)';
 end
 xf=x;

 xreal=fsolve(@fun,x0);
 normres=norm(x-xreal,'inf');


