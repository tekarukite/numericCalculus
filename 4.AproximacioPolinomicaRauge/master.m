%% PROBLEMA 1: INTERPOLAR ourfunction CON EL 
%% CRITERIO DE INTERPOLACION USANDO n+1 = 3,5,7,9
%polyfit uses x to form Vandermonde matrix V with n+1 columns, resulting in the linear system
%V = [x_1^n+1,...,1][p1]   [y1]
%    [x_i^n+1,...,1][pi] = [yi]
%    [x_n^n+1,...,1][pn]   [yn]
%en clase es distinto 
%polyfit uses x to form Vandermonde matrix V with n+1 columns, resulting in the linear system
%V = [1,...,x_0^n][a0]   [y1]
%    [1,...,x_i^n][ai] = [yi]
%    [1,...,x_n^n][an]   [yn]

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

figure(3)


dx = 2/100;
x = -1:dx:1;

N = 8;
    
Pol = zeros(N+1, 101);

for i = 1:N+1
   Pol(i, :) = legendreP(i-1, x); 
end

for m = 2:2:N
    M = zeros(m+1, m+1);  %Matriu normal
    D = zeros(m+1,1);     %Vector normal
        
    for i = 1:m+1
        for j = i:m+1   
            M(i, j) = sum(Pol(i, :).*Pol(j, :))*dx;
            %M(i, j) = integral(@(x) legendreP(i-1, x).*legendreP(j-1, x), -1, 1);
            M(j, i) = M(i, j);            
        end
    end
    
    for i = 1:m+1
        D(i) = sum(Pol(i, :).*ourfunction(x))*dx;
        %D(i) = integral(@(x) legendreP(i-1, x).*f(x), -1, 1);
    end    
    
    c = M\D;
    p = zeros(1, 101);
    for j = 1:m+1
         %L = legendreP(j-1, x);
         for i = 1:101
            p(i) = p(i) + Pol(j, i)*c(j);
         end
    end
    plot(x, p);
    hold on
end
plot(x, ourfunction(x))
hold on



