function [resultado, error] = newtonRaphsonModified(xinicial,tol, f , Jf) 
    x = xinicial;
    J = Jf(x);
    resultado = x - (J)\f(x);
    error = norm((x - resultado))/norm(resultado);
    i = 1;
    while(i <= 99)
        resultado = x - (J)\f(x);
        if(norm(resultado) > 0)
            error =[error norm((x - resultado))/norm(resultado)];
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