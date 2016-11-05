clear all;
close all;

%syms x;
%df = diff(f1(x),x)
%simplify(df)


figure(1)
f = @(x)f1(x);
i = linspace(-2,5,200);
plot(i,f(i))
grid on
figure(2)
%% bisection
fprintf('Bisection \n');
x = -1;
y =  0;
[solBisection, resBisection] = bisection(f, x, y, 800,0.0001);
%biseccion tiene convergencia lineal
plot(log(resBisection));
%title('Bisection')
hold on

%% newton
fprintf('Newton \n');
ini = -1;
df = @(x)df1(x);
[ solNewton, resNewton ] = newton( ini, 800, 0.0001,f,df);
%Newton tiene convergencia cuadrática
plot(log(resNewton));

%% whittaker

fprintf('Whittaker \n');
initialPoint = -1;
numberIterations = 800;
tol = 0.0001;
m = df(initialPoint);
[ result, residue] = whittakerRaquel( initialPoint, numberIterations, tol, f, m);
%tiene convergencia lineal
plot(log(residue),'-s');

%% Secante

fprintf('Secante \n');
ini1 = -1;
ini2 = 0.5;

[ solSecante, resSecante ] = secante( f, ini1, ini2, 800, 0.0001);
%Secante tiene convergencia super cuadrática (exponente entre 1 y 20)
% un poco mejor que lineal, sin calcular derivadas

plot(log(resSecante),'-*');


legend('bis','newt','wit','sec');

%% Convergencias: 
% Convergencia de orden p: |E_{k+1}| <= lambda|E_k|^p
% p = 1 ------------------------> Lineal (Biseccion)
% p in (1,2) o landa_k -> 0 ----> Superineal (Secante)
% p = 2 ------------------------> Cuadrática (Newton)

