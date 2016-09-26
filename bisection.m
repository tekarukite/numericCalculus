function [ sol ] = bisection( x, y, niter)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    X = x;
    Y = y;
    sol = 0;
    for i = 0: niter
        if(f(X)*f(Y)< 0)
            m = (X+Y)/2;
            if(f(m)*f(X)>0)
                X = m;
            elseif(f(m)*f(X)< 0)
                Y = m;
            end                              
        end
    end
    sol = X; 
    
end

