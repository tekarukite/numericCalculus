function [ sol, res ] = newton( initialPoint, numberIterations, tol,f,df)
%syntax: para llamar a una función @(x)(f1(x))
%Entrada: la función f, el numero de iteraciones niter,
% la tolerancia f y la derivada analitica de f df
%Salida: el residuo r y el resultado res
x = initialPoint;  
sol = x - f(x)/df(x);
res = zeros(1,numberIterations);
res(1,1) = abs((x - sol))/abs(sol);
i = 2;
    while (i <= numberIterations)
       sol = x - f(x)/df(x);  
       res(1,i) = abs((x - sol))/abs(sol);
       if(res(1,i) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i-1)
            break
       end
        x = sol;
        i = i + 1;
    end
    
end

