function [ sol, res ] = bisection(f, x, y, niter,tol)
% El método de la bisección entre x e y en niter iteraciones 
%con una tolerancia de tol
% Devuelve la solucion sol y el vector de los residuos res
    X = x;
    Y = y;
    sol = 0;
    res = [];
    aux = Y - (X+Y)/2;  
    res = [res, abs((X - aux))/abs(aux)];
    for i = 0: niter
        if (abs(f(X)) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i)
            break
        end
        if(res(1,1+i) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i)
            break
       end
        if(f(X)*f(Y)< 0)
            m = (X+Y)/2;
            if(f(m)*f(X)>0)
                aux =abs(X - m)/abs(m);
                res = [res, aux];
                X = m;
            elseif(f(m)*f(X)< 0)
                aux =abs(Y - m)/abs(m);
                res = [res, aux];
                Y = m;
            end
        end
    end
    sol = X; 
    
end

