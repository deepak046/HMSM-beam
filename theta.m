function y = theta(eps,P,Q,C,S,alpha,beta,B)
        
        xlow = 0; xhigh = 1;
        xmesh = linspace(xlow,xhigh,10);
        solinit = bvpinit(xmesh,@guess);
        opts = bvpset('RelTol',0.1,'AbsTol',0.1);
        sol = bvp4c(@(x,y) BeamODEfun(x,y,P,Q,C,S,alpha,beta,B,eps), @bc, solinit, opts);
        xint = xlow:0.01:xhigh;
        Sxint = deval(sol,xint);
        y = Sxint(1,:);
end
