function [ poli ] = interpolation( n, f ,a, b)
% Calculamos el polinomio interpolador de f con n puntos en el intervalo [a,b]
% salida: coeficientes del polinomio.
points = linspace(a,b,n);
disp(points);
values = f(points);
disp(values);
V = vander(points);
V = V';
disp(V)
poli = values/V;

end

