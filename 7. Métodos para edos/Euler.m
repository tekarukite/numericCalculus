function [x,Y]= Euler(f,v,y0,npassos)
% y0 = alpha = y(x0)
%y(xn+1) yn+1 = yn + hf(xn,yn)

a = v(1);
b = v(2);
h = (b-a)/npassos;

Y= y0;
x = linspace(a,b,npassos);

for i = 1:npassos-1
    Y=[Y Y(:,i)+h*f(x(i),Y(:,i))];
end

end

