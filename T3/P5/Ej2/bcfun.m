function [pa,qa,pb,qb]=bcfun(xa,ua,xb,ub,t)
B=20;
g=1;
pa=[0;0];
pb=[B*ub(1)-B*g;0];
qa=[1;1];
qb=[1;1];

end