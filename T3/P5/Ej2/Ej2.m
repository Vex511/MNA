%Usaremos el comando Pdepe de la forma
clc
clear
tiempos=(0:0.1:1);
x = (0:0.1:1);
sol=pdepe(0,@pdefun,@icond,@bcfun,x,tiempos);
u1 = sol(:,:,1);
u2 = sol(:,:,2);
figure ( 1 )
subplot ( 2, 1, 1 );
surf ( x, tiempos, u1 );
title ( 'Ejemplo sistema: Solución U1', 'Fontsize', 12 );
xlabel ( '<--- X --->' ); ylabel ( '<--- T --->' );
zlabel ( '<---U1(X,T)--->' );
subplot ( 2, 1, 2 );
surf ( x, tiempos, u2 );
title ( 'Ejemplo sistema: Solución U2', 'Fontsize', 12 );
xlabel ( '<--- X --->' ); ylabel ( '<--- T --->' );
zlabel ( '<---U2(X,T)--->' );


x0=0.5*ones(size(tiempos));


figure ( 2 )
subplot ( 2, 1, 1 );
surf ( x0, tiempos, u1 );
title ( 'Ejemplo sistema: Solución U1', 'Fontsize', 12 );
xlabel ( '<--- X --->' ); ylabel ( '<--- T --->' );
zlabel ( '<---U1(X,T)--->' );
subplot ( 2, 1, 2 );
surf ( x0, tiempos, u2 );
title ( 'Ejemplo sistema: Solución U2', 'Fontsize', 12 );
xlabel ( '<--- X --->' ); ylabel ( '<--- T --->' );
zlabel ( '<---U2(X,T)--->' );




