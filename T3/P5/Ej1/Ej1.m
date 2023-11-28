%Usaremos el comando Pdepe de la forma
clc
clear
tiempos=(0:0.25:1);
r=(1:0.1:2);
S=512/1000;
solucion=pdepe(1,@pdefun,@icond,@bcfun,r,tiempos);
figure(1)
clf

figure

for j=1:size(solucion,1)
plot(r,solucion(j,:),'Color', [rand(1),rand(1),rand(1)]);
end



surf(r,tiempos,solucion(:,:,1))
