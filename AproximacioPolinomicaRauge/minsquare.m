function [ poli ] = minsquare( base , f , m , a, b )
%base vector de la base con tamaño m
%f funcion a aproximar
% [a,b] intervalo donde aproximamos

x = linspace(a,b,m);
M = scalarProduc(base);
points = f(x);
fp = zeros(m,1);
for i = 1: m
    fp(i) = points(i)*base(i);
end

poli = inv(M)*fp;
    
end

