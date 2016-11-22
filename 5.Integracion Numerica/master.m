a = 0;
b = 5;

eje = linspace(0,6,100);
figure(1)
subplot(1,2,1)
plot(eje,f1(eje))

%% Cuadratura de Newton-Cotes: 

valorIntegral = [];
for i = 2:14
    n = i;
    x = linspace(a,b,i);
    y = f1(x);
    w = NewtonCotes(x,a,b);
    valorIntegral = [valorIntegral y*w];
end

valorExactoIntegral = exp(-a)-exp(-b) + sqrt(pi)/4*(erf(b-4)-erf(a-4));

figure(1)
subplot(1,2,2)
plot(log(abs(valorIntegral - valorExactoIntegral)),'.-')
hold on
legend('NC')

%% Cuadratura de Gauss-Lagendre