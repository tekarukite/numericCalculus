%% PROBLEMA 1: INTERPOLAR ourfunction CON EL 
%%CRITERIO DE INTERPOLACION USANDO n+1 = 3,5,7,9
n = 3;
p = interpolation(n,@(x)ourfunction(x), -1, 1);

i = linspace(-1,1,100);
e = evaluatePoly(p,i)
plot(i,ourfunction(i));
plot(i,evaluatePoly(p,i));