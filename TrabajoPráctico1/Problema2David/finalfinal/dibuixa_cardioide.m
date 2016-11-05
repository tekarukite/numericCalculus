function [] = dibuixa_cardioide( v )

x0 = v(1);
y0 = v(2);
t = -1:0.01:3;

x = 2 * cos(t) - cos(2*t);
y = 2 * sin(t) - sin(2*t);

x1 = -2*sin(t)+ 2*sin(2*t);
y1 = 2*cos(t) - 2*cos(2*t);

x2 = -2*cos(t) + 4*cos(2*t);
y2 = -2*sin(t) + 4*sin(2*t);

f = (x - x0).*x1 + (y - y0).*y1;

plot(t, f);
grid on;
hold on;
xlabel('x', 'Interpreter', 'Latex');
ylabel('f(x)', 'Interpreter', 'Latex');

end


