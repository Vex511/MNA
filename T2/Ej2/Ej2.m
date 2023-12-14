clear
clc

A=[10,1,2,3,4; 1,9,-1,2,-3; 2,-1,7,3,-5;3,2,3,12,-1;4,-3,-5,-1,15];
b=[12;-27;14;-17;12];
tol=0.01;
maxiter=100;

%A: comprobado
def_positiva(A);
%B: Comprobado
solreal=b'/A;
%C: Comprobado
[sol,iteraciones,resrel,cod]=gradientec(A,b,tol,maxiter,0);

%D:Comprobado
[x,flag,relres,iter] = pcg(A,b,tol,maxiter);





