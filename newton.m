function [ res, r ] = newton( ini, niter)
x = ini;    
res = ini;
r = zeros(1,niter);
for i = 1: niter
   res = x - f(x)/df(x);  
   r(i,1) = abs((x - res)/res);
    x = res;
end
end

