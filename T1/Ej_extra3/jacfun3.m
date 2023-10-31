function [z] = jacfun3(x)

z(1,1)=2*x(1);
z(1,2)=0;
z(2,1)=-1;
z(2,2)=2.*(x(2)-0.5);

end