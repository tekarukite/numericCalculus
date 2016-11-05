f = @(x) 1./(1+25*x.^2);
x = linspace(-1,1,101);
x3 = linspace(-1,1,3);
fx = f(x);
p3 = polyfit(x3,f(x3),2);
y3 = polyval(p3,x);
x5 = linspace(-1,1,5);
p5 = polyfit(x5,f(x5),4);
y5 = polyval(p5,x);
x7 = linspace(-1,1,7);
p7 = polyfit(x7,f(x7),6);
y7 = polyval(p7,x);
x9 = linspace(-1,1,9);
p9 = polyfit(x9,f(x9),8);
y9 = polyval(p9,x);

figure(1),plot(x,[fx',y3',y5',y7',y9']); legend('f','p=3','p=5','p=7','p=9');
title('Cosa'), xlabel('x'), ylabel('y')