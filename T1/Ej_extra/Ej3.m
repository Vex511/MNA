
x0=[1,1,1];
maxiter=100;
toler=10e-2;
detalle=0;










[P,nit3,norma,salida]=SNLbroyden(@fun,@jacobiana,x0,maxiter,toler,detalle);


xreal=fsolve(@fun,x0);
normres3=norm(P-xreal,'inf');


format long


x0=[1,1,1];
M=40;


[xf,normres4]=continuacion(@fun,@jacobiana,x0,M);
format long

%Introducimos xf del ejercicio 4 como condición inicial del ejercicio 3

[final,nit,norma,salida]=SNLbroyden(@fun,@jacobiana,xf,maxiter,toler,detalle);

normres=norm(final-xreal,'inf');

disp('res ej 3, res ej4, res ej extra, iteraciones 3: interaciones extra:')

disp(normres3)
disp(normres4)
disp(normres)
disp(nit3)
disp(nit)

%No parece que haya una ventaja significativa en encadenar los métodos
%salvo el ahorro en el número de operaciones. Quizás a una mayor
%tolerancia, aproximar la solución inicial












