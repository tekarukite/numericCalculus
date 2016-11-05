function [ c ] = coeftxebi( n )
%Dóna els coeficients del polinomi de Txebixov n-èssim (força ineficient
%per a n grans)
    
    c = [0 1;1 0];
    
    for i=3:(n+1)
        c0 = [2*c(i-1,:) 0];
        c = [zeros(i-1,1) c];
        c = [ c; c0 - c(i-2,:)];
    end
    
end

