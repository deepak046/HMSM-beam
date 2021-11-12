function dydx = BeamODEfu(x,y,P,Q,C,S,alpha,beta,B,eps)
   
    %Pi0 = 10000;
    %P = 0; 
    %Q = 0;
    %C = 20;
    %S = 1;
    %alpha = 0.25*pi;
    Fz = C*sin(beta);
    Fx = C*cos(beta);
    %B = 100;

    if (S == 1)
        S1 = 1;
    elseif (S==2)
        if x >=0 && x <= 0.5
            S1 = 1;
        elseif x >= 0.5 && x <= 1
            S1 = -1;
        end
    elseif (S == 3)
        if x >=0 && x <= (1/3)
            S1 = 1;
        elseif x >= (1/3) && x <= (2/3)
            S1 = -1;
        elseif x >= (2/3) && x <= 1
            S1 = +1;
        end
    elseif (S==4)
        S1 = cos(pi*x/2);
    end

    if (B == 0 && C == 0)
        dydx = [y(2) ; 0];
    else    
        dydx = [y(2) ; (1+eps)*(B*S1*sin(y(1)-alpha) + Fx*sin(y(1)) +(1-x)*(P*sin(y(1)) - Q*cos(y(1)))- Fz*cos(y(1)))];
    end

end
