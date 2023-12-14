function def_positiva(A)
% Función que permite comprobar si una matriz A simétrica
% es definida positiva viendo si todos sus autovalores son positivos
%-----------------------------------------------------------------------
% Comprobación de que la matriz A sea simétrica
if A'==A
disp('La matriz es simétrica')
% Se calculan los autovectores (v) y los autovalores (lambda) de A
[v,lambda]=eig(A);
if all(diag(lambda)>0)
disp('La matriz es definida positiva')
else
disp('La matriz no es definida positiva')
end
else
disp('La matriz no es simétrica')
end
