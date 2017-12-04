%%removeGaps
%This function removes all gaps from the matrix previusly created by finding the NaN value

function [matrixout]=removeGaps(matrixin)
matrixout=matrixin;
[l,c]=size(matrixout);
i=1;
while i<=l
    j=1;
    remove=false;
    while j<=c
        
        if isnan(matrixout(i,j))
            matrixout(i,:)=[];
            l=l-1;
            remove=true;
            break;
        else
            j=j+1;
        end
        
    end
    
    if remove
    else
        i=i+1;
    end
    
end
end
