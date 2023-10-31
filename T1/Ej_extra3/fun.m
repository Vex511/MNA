function [z] = fun(x)
z(1)=x(1).^2-x(2)-1;
z(2)=(x(1)-2).^2+(x(2)-0.5).^2-1;
end
%Función evaluada