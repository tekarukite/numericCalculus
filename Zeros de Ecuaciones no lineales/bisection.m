function [ sol ] = bisection(f, x, y, niter,tol)
% El método de la bisección entre x e y en niter iteraciones 
%con una tolerancia de tol
    X = x;
    Y = y;
    sol = 0;
    for i = 0: niter
        if (abs(f(X)) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i)
            break
        end
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

