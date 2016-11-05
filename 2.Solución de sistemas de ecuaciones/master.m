clear all;
close all;
format long
%% Pr�ctica Newton-Raphson
ini = [1;1;1];
%Creamoss la funcion que evalua f( residu de f )

%Calculamos el jacobiano
syms X Y Z;

cosa = [X;Y;Z];    

J = jacobian(residu(cosa),cosa)

%2 hacemos trampa y calculamos el resultado con fsolve

resul = fsolve(@residu, [0;0;0]);

%Calculamos la solución por newtonRaphson
fprintf('Newton Raphson \n')

tolerancia = 0.0001;
puntoInicialNR = ini;

[resulNR, errorNR] = newtonRaphson(puntoInicialNR,tolerancia,@(x)residu(x),@(x)Jf1(x));

%3 calcula el error cometido en cada iteracion y dibuja una gráfica de
%convergencia
%ejex = [1:1:size(errorNR,2)];

plot(log(errorNR));
grid on;
hold on;
%4 Resolver usando Newton-Raphson modificado
fprintf('Modified Newton-Raphson \n')
[resulNRM, errorNRM] = newtonRaphsonModified(puntoInicialNR,tolerancia,@(x)residu(x),@(x)Jf1(x));
%superplot(log(errorNR),log(errorNRM));
plot(log(errorNRM));
% xlabel = ('iteracion');
% ylabel = ('log(error)');


%% Broyden
% Output info
fprintf('Mètode de Broyden\n');
F = @(x)residu(x);
Aprox = Jf1(ini);
[resulBroyden,errorBroyden] = broyden (F,Aprox, ini, tolerancia, 800);


% Graphing of the error

plot (log(errorBroyden), 'displayname', 'Broyden');

legend('NR', 'NRM', 'Bro')


%% Casi-Newton en optimización
% si J es la jacobiana y H la hassiana
% x_{k+1} = x_k - H^{-1}(x_k)J(x_k)




