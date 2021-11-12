function del = delt(Pi0,eps,x,Fx,Fz,theta,B,alpha,P,Q, S,th)

    if (S == 1)
        S1 = 1;
    elseif (S==2)
        if x >=0 && x < 0.5
            S1 = 1;
        elseif x >= 0.5 && x <= 1
            S1 = -1;
        end
    elseif (S == 3)
        if x >=0 && x < (1/3)
            S1 = 1;
        elseif x >= (1/3) && x < (2/3)
            S1 = -1;
        elseif x >= (2/3) && x <= 1
            S1 = +1;
        end
    elseif (S==4)
        S1 = cos(pi*x/2);
    end
    
    if th == 1
        feps = eps;
    end
    
    del = Pi0*feps - (1-x)*(P*cos(theta) - Q*sin(theta)) - Fx*cos(theta) - Fz*sin(theta) - B*S1*cos(theta-alpha);
end
