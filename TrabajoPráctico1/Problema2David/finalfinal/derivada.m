function f1 = derivada( t, v )

x0 = v(1);
y0 = v(2);

x = 2 * cos(t) - cos(2*t);
y = 2 * sin(t) - sin(2*t);

x1 = -2*sin(t)+ 2*sin(2*t);
y1 = 2*cos(t) - 2*cos(2*t);

x2 = -2*cos(t) + 4*cos(2*t);
y2 = -2*sin(t) + 4*sin(2*t);

f = (x - x0)*x1 + (y - y0)*y1;
f1 = x1^2 + (x-x0)*x2 + y1^2 + (y - y0)*y2;

end
