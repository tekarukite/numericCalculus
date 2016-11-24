function [ Iaprox ] = compostaSimpson (f,a,b,m)
%Cuadratura de compuesta de Simpson
% I = w0f(x0)+w1f(x1)+w2f(x2)
%

x = linspace(a,b,2*m+1);
Iaprox = 0;
h = (x(2)-x(1));

for i = 1: m    
    Iaprox = Iaprox + h/3*(f(x(2*i-2+1))+4*f(x(2*i-1+1))+f(x(2*i+1)));     
end
disp('La integral por simpson da: ')
disp(Iaprox)
end

