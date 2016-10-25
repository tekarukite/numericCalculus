%% PROBLEMA 1: INTERPOLAR ourfunction CON EL 
%% CRITERIO DE INTERPOLACION USANDO n+1 = 3,5,7,9
i = linspace(-1,1,100);
y = ourfunction(i);

figure
plot(i,y);
hold on
for n = [3,5,7,9]
  p = interpolation(n,@(x)ourfunction(x), -1, 1);
  e = polyval(p,i);
  plot(i,e); 
end
hold of