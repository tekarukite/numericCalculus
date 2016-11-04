function [ M ] = scalarProduc( base )
%M = matriz del producto escalar generado por base
n = size(base,2);

M = zeros(n,n);
for i = 1:n
    for j = 1:n
        M(i,j) = base(i)*base(j);
    end
end

end

