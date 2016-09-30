function [ ] = superplot( v1,v2 )
      
    siz = max(size(v1,2),size(v2,2));
    ejex1 = [1:1:size(v1,2)];
    ejex2 = [1:1:size(v2,2)];
    ejexc = [1:siz];
    cero = zeros(siz);
    %por que mierdas esto no chusta?
    xlabel = ('iteracion');
    ylabel = ('log(error)');
    plot(ejex1,v1,ejex2,v2,ejexc,cero,'r')
    

end

