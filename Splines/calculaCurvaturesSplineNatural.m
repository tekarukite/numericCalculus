function d2S = calculaCurvaturesSplineNatural(x,y)
  

i = 1:length(x)-1;
h(i)=(x(i+1)-x(i));

t(i)=(y(i+1)-y(i));

i = 1:length(x)-2;
d(i)=(6./(h(i+1)+h(i))).*(t(i+1)./h(i+1)-t(i)./h(i));

i = 1:length(x)-3;
mu(i) = h(i)./(h(i+1)+h(i));
landa(i) = h(i+1)./(h(i+1)+h(i));

v = ones(1,length(x)-2);
D = 2*diag(v)+diag(landa,1)+diag(mu,-1);
d = d';
d2S = D\d;
d2S = [0;d2S;0]; 

end

