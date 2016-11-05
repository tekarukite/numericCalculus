function [ x, err] = Whittaker( x0, m, iter, p, tao )

x(1) = x0;
eps = 1e-05;
err(1) = abs(x(1) - tao);

for i = 1:iter
    x(i + 1) = x(i) - cardioide(x(i), p)/m;
    err(i + 1) = abs(x(i + 1) - tao);
end

end

