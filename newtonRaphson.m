function [resultado, error] = newtonRaphson(xinicial,tol, f , Jf) 
    x = xinicial;
    resultado = x - (Jf(x))\f(x);
    error = zeros(1,10);
    error(1,1) = 800;
    i = 1;
    while(true)
        resultado = x - (Jf(x))\f(x);
        if(norm(resultado) > 0)
            error(1,i) = norm((x - resultado))/norm(resultado);
        end
        fprintf('error : %i \n',error(1,i))
        x = resultado;
        if(error(1,i) <= tol)
            fprintf('Hemos encontrado la solucion en %i iteraciones \n',i-1)
            break
        end
        i = i+1;
    end
end