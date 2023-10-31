%El objetivo de este ejercicio autoimpuesto por el alumno es comprobar que
%los métodos de continuación son interesantes para mejorar la aproximación
%del método de Broyden. Usaremos la misma función que en el ejercicio 3 y
%4. Tambien hallaremos la norma de su residuo y veremos si este método
%mejora los resultados.


x0=[1,1,1];
M=400;
[x_cont,normres]=continuacion(@fun,@jacobiana,x0,M);



%Introducimos x_cont del ejercicio 4 como condición inicial del ejercicio 3

[final1,nit1,norma1,salida]=SNLbroyden(@fun,@jacobiana,x_cont,maxiter,toler,detalle);

normres=norm(final1-xreal,'inf');
%Ej3
[final3,nit3,norma3,salida]=SNLbroyden(@fun,@jacobiana,x0,maxiter,toler,detalle);

normres3=norm(final3-xreal,'inf');
%Ej4

[final4,normres4]=continuacion(@fun,@jacobiana,x0,M);

normres4=norm(final4-xreal,'inf');




%Comparamos para ambos métodos por separado en resultado, tolerancias e
%iteraciones

disp('Continuacion+Broyden, continuación, broyden')

disp(final1)
disp(final3)
disp(final4')


%No parece que haya una ventaja significativa en encadenar los métodos
%salvo el ahorro en el número de operaciones. Quizás a una mayor
%tolerancia, aproximar la solución inicial







