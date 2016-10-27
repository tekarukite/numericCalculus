function [ y ] = basefunction( x , m)
%
y = zeros(size(x));
for i = 1:m
    y(i) = x(i)^(i-1);
end
y
end

