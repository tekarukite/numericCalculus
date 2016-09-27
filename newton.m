function [ res, r ] = newton( ini, niter, tol,f,df)
%syntax: para llamar a una función @(x)(f1(x))
x = ini;  
res = x - f(x)/df(x);
r = zeros(1,niter);
r(1,1) = 800;
i = 2;
    while (i <= niter)
       res = x - f(x)/df(x);  
       r(1,i) = abs((x - res))/abs(res);
       if(r(1,i) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i-1)
            break
       end
        x = res;
        i = i + 1;
    end
    
end

