

f=(@(x)(15*x(1)+x(2)^2-4*x(3)-13,@(x)(x(1)^2+10*x(2)-x(3)-11),@(x)(x(2)^2-25*x(3)-22);
x0=[0,0,0];
metodo=1;
maxiter=1000;
toler=10e-6;







[x,nit,norma,salida]=sisnolin_puntofijo(f,x0, metodo,maxiter,toler,0)

fprintf(x)
fprintf(nit)
fprintf(norma)
fprintf(salida)