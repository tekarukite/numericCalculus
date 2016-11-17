a = 0;
b = 5;
n = 5;
x = linspace(a,b,5);
y = f1(x);
w = NewtonCotes(x,a,b);

valorIntegral = y*w
