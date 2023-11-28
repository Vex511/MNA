function [c,f,s] = pdefun(r, t ,u, ur)

%Analizamos los valores de c,f,s
S=512/1000;
c=S;
f=(1+r)*ur;
s=0;
end


