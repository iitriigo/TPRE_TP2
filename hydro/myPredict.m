function [prediction]=myPredict(matrix,net,N)


[lines,colls]=size(matrix);


for i=1:lines
    if isnan(matrix(i,1))
     
        
        linha=[matrix(i,2) , matrix(i,3), matrix(i,4), matrix(i,5) ...
            matrix(i-1*24,1), matrix(i-7*24,1), matrix(i,8)];
        

        matrix(i,1) = net(transpose(linha));
        
    end
end
prediction=matrix(:,1);
end