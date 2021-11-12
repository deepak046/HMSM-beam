%{
xlow = 0; xhigh = 1;
xmesh = linspace(xlow,xhigh,10);
solinit = bvpinit(xmesh,@guess);
opts = bvpset('RelTol',0.1,'AbsTol',0.1);
sol = bvp4c(@(x,y) BeamODEfun(x,y,P,Q,C,S,alpha,beta,B,0.002), @bc, solinit, opts);
xint = linspace(xlow,xhigh,100);
Sxint = deval(sol,xint);

plot(xint, Sxint(1,:));

 
u = cumtrapz(xint, (((1+0.002)*cos(Sxint(1,:)))-1));
v = cumtrapz(xint, ((1+0.002)*sin(Sxint(1,:))));

subplot(1,3,1);
%hold on;
plot(xint,u);
subplot(1,3,2);
%hold on;
plot(xint, v);
subplot(1,3,3);
%hold on;
plot(u+xint, v); 
%}