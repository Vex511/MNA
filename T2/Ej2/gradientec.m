function [sol,iteraciones,resrel,cod]=gradientec(A,b,toler,maxiter,detalle)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Aplica el método de gradiente conjugado para
% encontrar la solución de Ax=b
% Datos
% -----
% A = matriz del sistema (simétrica, definida positiva)
% b = segundo miembro del sistema
% toler = tolerancia en el residuo para terminar de iterar
% maxiter = numero máximo de iteraciones admitidas
% detalle = 0 No se muestran las iteraciones
% = 1 Se muestran las iteraciones
%--------------------------------------------------------------------
% Argumentos de salida:
%--------------------------------------------------------------------
% sol = solución del sistema de ecuaciones con (residuo < toler)
% iteraciones = iteraciones realizadas hasta alcanzar la tolerancia
% resrel = residuo relativo norm(b-A*sol)/norm(b)
% cod = 1 si se alcanza la tolerancia
% = 0 si no se alcanza la tolerancia en las iteraciones dadas.
%--------------------------------------------------------------------
iteraciones=0;
sol=ones(size(b));

cod=0;

resrel=norm(b-A*sol)/norm(b);


x=ones(size(b));


if nargin < 3
toler=eps; maxiter=1000; detalle=1;
elseif nargin < 4
maxiter=1000; detalle=1;
elseif nargin < 5
detalle=1;
end


r=b-A*x;
v=r;
c=dot(r,r);

for iter=1:maxiter
    z=A*v;
    t=c/dot(z,v);
    x=x+t.*v;
    r=r-t*z;
    d=dot(r,r);
    if d<toler
        sol=x;
        iteraciones=iter;
        resrel=norm(b-A*sol)/norm(b);
        cod=1;
        return
    else
        v=r+(d/c)*v;
        c=d;
    end
end


resrel=norm(b-A*sol)/norm(b);


        






