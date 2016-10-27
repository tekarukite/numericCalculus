function [ poli ] = interpolation( n, f ,a, b)
% Calculamos el polinomio interpolador de f con n puntos en el intervalo [a,b]
% salida: coeficientes del polinomio.
points = linspace(a,b,n);
values = f(points);
V = vander(points);
V = V';
poli = values/V;

end

