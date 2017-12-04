%%makeFeature
%This function creates new input vectors with the desired delay in days. 

function [feature,N]=makeFeature(lacunas,N);
    N=N*24;
    CounterBehind=N;
    feature=zeros(length(lacunas),1);
    for i=1:length(lacunas)
        if (CounterBehind>0)
            feature(i)=nan;
            CounterBehind=CounterBehind-1;
        else 
            feature(i)=lacunas(i-N);
        end
    end
end
