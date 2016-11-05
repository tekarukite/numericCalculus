clear all;
close all;

%% Pr�ctica Newton-Raphson

%Creamoss la funcion que evalua f( residu de f )

%Calculamos el jacobiano
syms X Y Z;

cosa = [X;Y;Z];    

J = jacobian(residu(cosa),cosa);

%2 hacemos trampa y calculamos el resultado con fsolve

resul = fsolve(@residu, [0;0;0]);

%Calculamos la solución por newtonRaphson
fprintf('Newton Raphson \n')

tolerancia = 0.001;
puntoInicialNR = [1;1;1];

[resulNR, errorNR] = newtonRaphson(puntoInicialNR,tolerancia,@(x)residu(x),@(x)Jf1(x));

%3 calcula el error cometido en cada iteracion y dibuja una gráfica de
%convergencia
%ejex = [1:1:size(errorNR,2)];

plot(log(errorNR));
hold on;
%4 Resolver usando Newton-Raphson modificado
fprintf('Modified Newton-Raphson \n')
[resulNRM, errorNRM] = newtonRaphsonModified(puntoInicialNR,tolerancia,@(x)residu(x),@(x)Jf1(x));
%superplot(log(errorNR),log(errorNRM));
plot(log(errorNRM));
xlabel = ('iteracion');
ylabel = ('log(error)');


%% Broyden
% Output info
fprintf('Mètode de Broyden\n');
F = @(x)residu(x);
ini = [1;1;1];
Aprox = Jf1(puntoInicialNR);
[resulBroyden,errorBroyden] = broyden (F,Aprox, ini, tolerancia, 800);


% Graphing of the error

plot (log(errorBroyden), 'displayname', 'Broyden');

legend('NR', 'NRM', 'Bro')



