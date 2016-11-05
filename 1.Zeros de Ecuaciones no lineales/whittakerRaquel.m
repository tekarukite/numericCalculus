function [ result, residue  ] = whittakerRaquel( initialPoint, numberIterations, tol, f, m)
%This function calcules a 0 of the function f aproximation from an initial
%point and whith a tolerance of tol using the aproximation of the
%derivative m

%% Que hace whittaker
% Es newton aproximando la derivada por una constante m
% x_{k+1} = x_k - f(x_k)/m

x = initialPoint;
r = 3;

i = 1;
    while (i <= numberIterations)
       res = x - f(x)/m;  
       %fprintf('El resultado en la iteracion %i es %i \n',i,res)
       r =[r abs((x - res))/abs(res)];
       if(r(1,i) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i)
            break
       end
        x = res;
        i = i + 1;
    end
    residue = r;
    result = res;

end

