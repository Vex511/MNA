
clc
clear

a1=0.5; b1=0.75;
a2=0.75; b2=1;

[optimomin,valormin,nit,conver]=aurea(@fun,a1,b1,1000,0.01);


[optimomax,valormax,nit,conver]=aurea(@fun,a2,b2,1000,0.01);

minimo=fminbnd(@fun,0.55,0.65);
maximo=fminbnd(@fun,0.75,0.95);
fminimo=fun(minimo);
fmaximo=fun(maximo);


x= linspace(0.5,1,50);
y=fun(x);
plot(x,y)
hold on
scatter(optimomin,valormin)
scatter(optimomax, valormax)







