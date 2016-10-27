%% PROBLEMA 1: INTERPOLAR ourfunction CON EL 
%% CRITERIO DE INTERPOLACION USANDO n+1 = 3,5,7,9
i = linspace(-1,1,100);
y = ourfunction(i);

figure(1)
plot(i,y);
hold on
for n = [3,5,7,9]
  p = interpolation(n,@(x)ourfunction(x), -1, 1);
  e = polyval(p,i);
  plot(i,e); 
end
legend('f','3','5','7','9')


%% PROBLEMA 2: APROXIAMA POR MINIMOS CUADRADOS 
%% USANDO 101 PUNTOS CON GRADO M = 2,4,6,8
i = linspace(-1,1,100);
y = ourfunction(i);


figure(2)
plot(i,y);
hold on
for m = [2,4,6,8]
    im = linspace(-1,1,101);
    y2 = ourfunction(im);
    p = polyfit(im,y2,m);
  e = polyval(p,i);
  plot(i,e); 
end
legend('f','2','4','6','8')
hold off



