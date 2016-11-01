function [ res, r ] = newton( initialPoint, numberIterations, tol,f,df)
%syntax: para llamar a una función @(x)(f1(x))
%Entrada: la función f, el numero de iteraciones niter,
% la tolerancia f y la derivada analitica de f df
%Salida: el residuo r y el resultado res
x = initialPoint;  
res = x - f(x)/df(x);
r = zeros(1,numberIterations);
r(1,1) = 800;
i = 2;
    while (i <= numberIterations)
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

