clear all;

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



%% Cuadratura de Gauss-Lagendre

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
legend('NC','Gauss')

