function [ ] = superplot( v1,v2 )
      
    ejex = [1:1:size(v1,2)];
    cero = zeros(size(v1,2));
    plot(ejex,v1,ejex,v2,ejex,cero,'r');


end

