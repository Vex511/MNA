clear
clc

x0=[0,0];
x1=[1,0];
metodo=1;
maxiter=100;
toler=10e-10;
detalle=0;





[P1,nit1,norma,salida]=newtonsis(@fun,@jacfun,x1,maxiter,toler,detalle);
%Diagonal
[P2,nit2,norma2,salida]=newtonsis(@fun,@jacfun2,x1,maxiter,toler,detalle);
%Triangular superior
[P3,nit3,norma3,salida]=newtonsis(@fun,@jacfun3,x1,maxiter,toler,detalle);

disp(nit1)
disp(nit2)
disp(nit3)


