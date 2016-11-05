xdib = linspace(-1,1,101);
f = @(x) 1./(1+25*x.^2);
p2 = xdib.^2; p4=xdib.^4;
fdib = f(xdib);
figure(1),plot(xdib,[fdib',p2',p4']); legend('f','p=2','p=4');
title('Cosa'), xlabel('x'), ylabel('y')