clear all;

% bisection
f = @(x)f1(x);
x = -1;
y =  0;
solu = bisection(f, x, y, 800,0.0001);

% newton
ini = -1;
df = @(x)df1(x);
[ res, r ] = newton( ini, 800, 0.0001,f,df);


