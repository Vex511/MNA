function [c,f,s] = pdefun(x,t,u, du)

%Analizamos los valores de c,f,s
c=[1;1];
beta1=0.2;
beta2=0.3;
gamma=20;
R=(1-u(2))*exp(gamma-(gamma/u(1)));
s=[beta1.*R;beta2.*R];
f=[du(1);du(2)];

end


