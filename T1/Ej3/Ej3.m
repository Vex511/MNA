
%En este ejercicio usaremos el método de Broyden para resolver un sistema
%de ecuaciones no lineal. El método de Broyden aprovecha el método de la
%secante para n dimensión. Reduce el número de pasos necesarios y mantiene
%la velocidad de convergencia. Ahorra número de operaciones, pero es
%sensible a nuestra aproximación inicial.

x0=[1,1,1];
maxiter=100;
toler=10e-2;
detalle=0;










[P,nit,norma,salida]=SNLbroyden(@fun,@jacobiana,x0,maxiter,toler,detalle);
disp(P)

xreal=fsolve(@fun,x0);
normres=norm(P-xreal,'inf');


format long
disp(round(normres,10))




