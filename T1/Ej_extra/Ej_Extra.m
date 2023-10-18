%El objetivo de este ejercicio autoimpuesto por el alumno es comprobar que
%los métodos de continuación son interesantes para mejorar la aproximación
%del método de Broyden. Usaremos la misma función que en el ejercicio 3 y
%4. Tambien hallaremos la norma de su residuo y veremos si este método
%mejora los resultados.

%Resultados del ejercicio 3

[P,nit,norma,salida]=SNLbroyden(@fun,@jacobiana,x0,maxiter,toler,detalle);
disp(P)

xreal=fsolve(@fun,x0);
normres3=norm(P-xreal,'inf');


format long
disp(round(normres3,10))

%Resultados ejercicio 4



