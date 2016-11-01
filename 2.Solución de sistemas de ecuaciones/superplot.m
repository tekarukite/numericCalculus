function [ ] = superplot( v1,v2 )
      
    siz = max(size(v1,2),size(v2,2));
    ejex1 = [1:1:size(v1,2)];
    ejex2 = [1:1:size(v2,2)];
    grid on;
    hold on;
    plot(ejex1,v1,ejex2,v2,'r')
    legend('show')
end

