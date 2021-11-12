% Solving Beam ODE

xlow = 0; xhigh = 1;
xmesh = linspace(xlow,xhigh,10);
solinit = bvpinit(xmesh,[0 1]);
sol = bvp4c(@BeamODEfun, @bc, solinit);
xint = linspace(xlow,xhigh);
Sxint = deval(sol,xint);
plot(xint, Sxint(1,:));
