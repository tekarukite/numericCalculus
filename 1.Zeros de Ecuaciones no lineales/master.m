clear all;

% bisection
fprintf('bisection');
f = @(x)f1(x);
x = -1;
y =  0;
[solBisection, resBisection] = bisection(f, x, y, 800,0.0001);
plot(log(resBisection));

% newton
fprintf('Newton');
ini = -1;
df = @(x)df1(x);
[ res, r ] = newton( ini, 800, 0.0001,f,df);

%whittaker
fprintf('Whittaker');
initialPoint = -1;
numberIterations = 800;
tol = 0.0001;
m = df(initialPoint);
[ result, residue] = whittakerRaquel( initialPoint, numberIterations, tol, f, m);
