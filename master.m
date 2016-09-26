% Calculamos Newton con tolerancia
puntoInicial = 3;
numeroIteraciones = 10;
tolerancia = 0.000001;
f = @(x)f1(x);
df = @(x)df1(x);
[resultado, residuo] = newton(puntoInicial,numeroIteraciones, tolerancia, f, df);
