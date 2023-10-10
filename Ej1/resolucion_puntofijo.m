

x0=[0,0,0];
metodo=1;
maxiter=100;
toler=10e-6;
detalle=0;

[x,nit,norma,salida]=sisnolin_puntofijo(@fung,x0, metodo,maxiter,toler,detalle);


disp(x)
disp(nit)
disp(norma)
disp(salida)
