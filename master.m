clear all 
% Calculamos Newton con tolerancia
puntoInicial = 3;
numeroIteraciones = 10;
tolerancia = 0.000001;
f = @(x)f1(x);
df = @(x)df1(x);
%[resultado, residuo] = newton(puntoInicial,numeroIteraciones, tolerancia, f, df);


%%%%%%%%Práctica Newton-Raphson

%Creamoss la funcion que evalua f( residu de f )

%Calculamos el jacobiano
syms X Y Z;

cosa = [X;Y;Z];    

jacobian(residu(cosa),cosa);

%2 hacemos trampa y calculamos el resultado con fsolve

resul = fsolve(@residu, [0;0;0]);
