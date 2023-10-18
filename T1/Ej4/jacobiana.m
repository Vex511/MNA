function [z] = jacobiana(x)
z(1,1)=3*x(1)^2-10;
z(1,2)=1;
z(1,3)=-1;
z(2,1)=-2;
z(2,2)=3*x(2)^2+10;
z(2,3)=-2;
z(3,1)=1;
z(3,2)=1;
z(3,3)=-10+2*cos(x(3));
end
%Función evaluada