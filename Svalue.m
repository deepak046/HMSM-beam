function S1 = Svalue(S,x)
    
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
        S1 = ;
    end
    
    
end