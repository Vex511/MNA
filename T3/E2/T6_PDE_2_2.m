%Exportamos T6_PDE_2.2 workspace (es el resultado de exportar lo trabajado en el PDE tool y la solución) 
x=p(1,:)';y=p(2,:)';
err=exp(y).*cos(x)-exp(x).*cos(y)-u(:);
err_max=max(abs(err));
pdesurf(p,t,err);
colorbar

