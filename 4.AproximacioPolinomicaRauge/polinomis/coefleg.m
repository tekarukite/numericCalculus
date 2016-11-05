function [ c ] = coefleg( n )
%Dóna els coeficients dels polinomis de Legendre fins el n-èssim (força ineficient
%per a n grans)
    
    c = [0 1;1 0];
    
    for i=3:(n+1)
        c0 = [((2*i-1)/i)*c(i-1,:) 0];
        c = [zeros(i-1,1) c];
        c = [ c; c0 - ((i-1)/i)*c(i-2,:)];
    end
end

