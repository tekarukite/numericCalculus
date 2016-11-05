x = linspace(-1,1,101);
f = @(x) 1./(1+25*x.^2);
xdib = linspace(-1,1,200);
fdib = f(xdib);
p2 = polyfit(x,f(x),2);
y2 = polyval(p2,xdib);
p4 = polyfit(x,f(x),4);
y4 = polyval(p4,xdib);
p6 = polyfit(x,f(x),6);
y6 = polyval(p6,xdib);
p8 = polyfit(x,f(x),8);
y8 = polyval(p8,xdib);

figure(2),plot(xdib,[fdib',y2',y4',y6',y8']); legend('f','p=2','p=4','p=6','p=8');
title('Cosa'), xlabel('x'), ylabel('y')