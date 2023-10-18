

x0=[1,1,1];
M=400;


[xf,normres]=continuacion(@fun,@jacobiana,x0,M);
disp(xf)
format long
disp(round(normres,10))
