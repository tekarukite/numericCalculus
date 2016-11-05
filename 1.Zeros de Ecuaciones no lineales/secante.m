function [ sol, res ] = secante( f, initialPoint1, initialPoint2, numberIterations, tol)
%syntax: para llamar a una función @(x)(f1(x))
%Entrada: la función f, el numero de iteraciones niter,
% la tolerancia f 
%Salida: el residuo res y el resultado sol
x = initialPoint1;
df = (f(initialPoint2)-f(initialPoint1))/(initialPoint2-initialPoint1);
sol = x - f(x)/df;
res = [];
res = [res abs((x - sol))/abs(sol)];
i = 2;
    while (i <= numberIterations)
       sol = x - f(x)/df;  
       res =[res abs((x - sol))/abs(sol)];
       if(res(1,i) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i-1)
            break
       end
       df = (f(sol)-f(x))/(sol-x);
        x = sol;
        i = i + 1;
    end
    
end

