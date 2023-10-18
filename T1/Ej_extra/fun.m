function [z] = fun(x)
z(1)=x(1)^3-10*x(1)+x(2)-x(3)+3;
z(2)=x(2)^3+10*x(2)-2*x(1)-2*x(3)-5;
z(3)=x(1)+x(2)-10*x(3)+2*sin(x(3))+5;
end
%Función evaluada