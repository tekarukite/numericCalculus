clear all 
% Calculamos Newton con tolerancia
puntoInicial = 3;
numeroIteraciones = 10;
tolerancia = 0.000001;
f = @(x)f1(x);
df = @(x)df1(x);
%[resultado, residuo] = newton(puntoInicial,numeroIteraciones, tolerancia, f, df);


%%%%%%%%Pr�ctica Newton-Raphson

%Creamoss la funcion que evalua f( residu de f )

%Calculamos el jacobiano
syms X Y Z;

cosa = [X;Y;Z];    

J = jacobian(residu(cosa),cosa);

%2 hacemos trampa y calculamos el resultado con fsolve

%resul = fsolve(@residu, [0;0;0]);

%3 calcula el error cometido en cada iteracion y dibuja una gráfica de
%convergencia
puntoInicialNR = [0;0;0];

[resulNR, errorNR] = newtonRaphson(puntoInicialNR,tolerancia,@(x)residu(x),@(x)Jf1(x));