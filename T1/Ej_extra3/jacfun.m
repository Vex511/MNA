function [z] = jacfun(x)

z(1,1)=2*x(1);
z(1,2)=2.*(x(1)-2);
z(2,1)=-1;
z(2,2)=2.*(x(2)-0.5);

end