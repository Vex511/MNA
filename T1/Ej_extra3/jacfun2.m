function [z] = jacfun2(x)

z(1,1)=2*x(1);
z(1,2)=0;
z(2,1)=0;
z(2,2)=2.*(x(2)-0.5);

end