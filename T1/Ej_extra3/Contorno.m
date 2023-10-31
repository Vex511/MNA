
%Preparamos el dominio
x = linspace(-10,10);
y = linspace(-10,10);
[X,Y] = meshgrid(x,y);

%Preparamos la función

z1=X.^2-Y-1;
z2=(X-2).^2+(Y-0.5).^2-1;

%Calculamos los puntos P y Q que son los puntos de intersección entre ambos
%planos en z=0. Para ello incorporo el método en el script para que me los
%calcule sin depender del otro script.

x0=[0,0];
x1=[0,1];
metodo=1;
maxiter=100;
toler=10e-7;
detalle=0;

[P,nit,norma,salida]=newtonsis(@fun,@jacfun,x0,maxiter,toler,detalle);
[Q,nit2,norma2,salida]=newtonsis(@fun,@jacfun,x1,maxiter,toler,detalle);


% Se dibuja la primera
figure(1)
surf(X,Y,z1)
% Se dibuja la segunda
figure(2)
surf(X,Y,z2)

% Se dibuja de f1 la curva de nivel que vale 0
figure(3)
contour(x,y,z1,[0,0],'r');
hold on
scatter(P(1),P(2),'green') %Los puntos P y Q se calculan a partir del método

% En la misma gráfica se dibuja de f2 la curva de nivel que vale 0
contour(x,y,z2,[0,0],'b');
scatter(Q(1),Q(2),'green')
xlabel('x_1'); ylabel('y');


