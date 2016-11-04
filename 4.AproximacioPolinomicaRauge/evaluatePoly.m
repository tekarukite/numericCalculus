function [ values ] = evaluatePoly(coef, points )
% ecaluates poly in a vector of points.
n = size(coef,2);
m = size(points,2);
values = zeros(m,1);
values = values';
for j = 1: size(points)
    for i = 1:n
        values(j) = coef(i).*points(j)^(i-1);
    end
end

end 