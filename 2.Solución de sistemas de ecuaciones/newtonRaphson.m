function [resultado, error] = newtonRaphson(xinicial,tol, f , Jf) 
%% Newton para sistemas de ecuaciones
% x_k+1 = x_k -J(x_k)^(-1)f(x_k)

    x = xinicial;
    resultado = x - (Jf(x))\f(x);
    error = norm((x - resultado))/norm(resultado);
    i = 1;
    while i <= 800
        resultado = x - (Jf(x))\f(x);
        if(norm(resultado) > 0)
            error = [error norm((x - resultado))/norm(resultado)];
        end
        %fprintf('error : %i \n',error(1,i))
        x = resultado;
        if(error(1,i) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i-1)
            break
        end
        i = i+1;
    end
end