function [ w ] = NewtonCotes( x, a , b )
% Esta funcion devuelve los pesos obtenidos de la 
% cuadratura >= n dada por el vector de puntos x 
% entre a y b

% Imponemos que integre polinomios de grado <= n

n = length(x);
w = zeros(n,1);
X = zeros(n,n);
h = zeros(n,1);

for i = 1:n
    h(i)= (b^(i)-a^(i))/i;
    X(i,:)= x.^(i-1); 
end

w = X\h;

fprintf('Los pesos son: ')
display(w')
end

