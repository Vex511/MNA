x = p(1,:)'; y = p(2,: )'; % coordenadas de los nodos, vectores columna
err = exp(y).*cos(x) - exp(x).*cos(y) - u(:,end); % vector error
% (estado estacionario)
err_max = max(abs(err)) % norma infinito del error
pdesurf(p,t,err) % dibujo del error en los nodos
colorbar
