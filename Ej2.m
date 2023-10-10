x0=[0,0];
x1=[0,1];
metodo=1;
maxiter=100;
toler=10e-7;
detalle=0;





[P,nit,norma,salida]=newtonsis(@fun,@jacfun,x0,maxiter,toler,detalle);
[Q,nit2,norma2,salida]=newtonsis(@fun,@jacfun,x1,maxiter,toler,detalle);


