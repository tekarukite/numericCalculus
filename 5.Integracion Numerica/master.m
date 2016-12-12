clear all;
close all;

%% FUNCION 1
a = 0;
b = 5;

eje = linspace(0,6,100);
figure(1)
subplot(1,2,1)
plot(eje,f1(eje))
hold on
valorExactoIntegral = exp(-a)-exp(-b) + sqrt(pi)/4*(erf(b-4)-erf(a-4));


%% Cuadratura de Newton-Cotes cerrado: 

valorIntegralNC = [];
for i = 2:14
    n = i;
    x = linspace(a,b,i);
    y = f1(x);
    w = NewtonCotes(x,a,b);
    valorIntegralNC = [valorIntegralNC y*w];
end

figure(1)
subplot(1,2,2)
plot(log(abs(valorIntegralNC - valorExactoIntegral)),'.-')
hold on

%% Cuadratura de Newton-Cotes abierta: 

valorIntegralNC2 = [];
for i = 2:14
    n = i;
    x = linspace(a,b,i);
    x = x(2:i-1);
    y = f1(x);
    w = NewtonCotes(x,a,b);
    valorIntegralNC2 = [valorIntegralNC2 y*w];
end

figure(1)
subplot(1,2,2)
plot(log(abs(valorIntegralNC2 - valorExactoIntegral)))
hold on




%% Cuadratura de Gauss-Legendre: 

valorIntegralGauss = [];
for i = 0:14
    [x,w] = QuadraturaGauss(i+1);
    y = newf1(x,a,b); 
    valorIntegralGauss = [valorIntegralGauss w*y];
end

figure(1)
subplot(1,2,2)
plot(log(abs(valorIntegralGauss - valorExactoIntegral)),'*-')
hold on
legend('NC','NC abierto','Gauss')

%% FUNCION 2
a = -4; 
b = 4;

eje = linspace(a,b,100);
figure(2)
subplot(1,2,1)
plot(eje,f2(eje))
hold on
valorExactoIntegral = atan(4)-atan(-4);
% Cuadratura de Newton-Cotes cerrado: 

valorIntegralNC = [];
for i = 2:14
    n = i;
    x = linspace(a,b,i);
    y = f2(x);
    w = NewtonCotes(x,a,b);
    valorIntegralNC = [valorIntegralNC y*w];
end

figure(2)
subplot(1,2,2)
plot(log(abs(valorIntegralNC - valorExactoIntegral)),'.-')
hold on

% Cuadratura de Newton-Cotes abierta: 

valorIntegralNC2 = [];
for i = 2:14
    n = i;
    x = linspace(a,b,i);
    x = x(2:i-1);
    y = f2(x);
    w = NewtonCotes(x,a,b);
    valorIntegralNC2 = [valorIntegralNC2 y*w];
end

figure(2)
subplot(1,2,2)
plot(log(abs(valorIntegralNC2 - valorExactoIntegral)))
hold on




% Cuadratura de Gauss-Lagendre: 

valorIntegralGauss = [];
for i = 0:14
    [x,w] = QuadraturaGauss(i+1);
    y = newf2(x,a,b); 
    valorIntegralGauss = [valorIntegralGauss w*y];
end

figure(2)
subplot(1,2,2)
plot(log(abs(valorIntegralGauss - valorExactoIntegral)),'*-')
hold on
legend('NC','NC abierto','Gauss')

%% FUNCION 3
a = 0; 
b = pi*1/2;

eje = linspace(a,b,100);
figure(3)
subplot(1,2,1)
plot(eje,f3(eje))
hold on
%valorExactoIntegral = 2*(1-1/9 + 1/5^2 - 1/7^2 + 1/9^2 - 1/11^2 + 1/13^2);
valorExactoIntegral = integral(@(x)f3(x),a,b);
% Cuadratura de Newton-Cotes cerrado: 
N = 2:14;
valorIntegralNC = [];
for i = 2:14
    n = i;
    x = linspace(a,b,i);
    y = f3(x);
    w = NewtonCotes(x,a,b);
    valorIntegralNC = [valorIntegralNC y*w];
end

figure(3)
subplot(1,2,2)
plot(log(N),log(abs(valorIntegralNC - valorExactoIntegral)/abs(valorExactoIntegral)),'.-')
hold on

% Cuadratura de Newton-Cotes abierta: 
N = 3:14;
valorIntegralNC2 = [];
for i = 3:14
    n = i;
    x = linspace(a,b,i);
    x = x(2:i-1);
    y = f3(x);
    w = NewtonCotes(x,a,b);
    valorIntegralNC2 = [valorIntegralNC2 y*w];
end

figure(3)
subplot(1,2,2)
plot(log(N),log(abs(valorIntegralNC2 - valorExactoIntegral)/abs(valorExactoIntegral)))
hold on




% Cuadratura de Gauss-Lagendre: 
N = 0:14;
valorIntegralGauss = [];
for i = 0:14
    [x,w] = QuadraturaGauss(i+1);
    y = newf3(x,a,b); 
    valorIntegralGauss = [valorIntegralGauss w*y];
end

figure(3)
subplot(1,2,2)
plot(log(N),log(abs(valorIntegralGauss - valorExactoIntegral)/abs(valorExactoIntegral)),'*-')
hold on
legend('NC','NC abierto','Gauss')


