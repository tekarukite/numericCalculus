function [ y ] = fu ( t, x0, y0 )

y = (-2*sin(t) + 2*sin(2*t))*(-x0 + 2*cos(t) - cos(2*t)) + (2*cos(t) - 2*cos(2*t))*(-y0 + 2*sin(t) - sin(2*t));
end

