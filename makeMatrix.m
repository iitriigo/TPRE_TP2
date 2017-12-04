%%makeMatrix
%This function creats a matrix containg all of the input and target vectors. 

function [matrix]=makeMAtrix(varargin)

a=nargin;
if nargin == 0
    error('No elements inserted')
end

lengthElement=length(varargin{1});
matrix=zeros(lengthElement,nargin);
for i=1:a
    if (length(varargin{i}) ~= lengthElement)
        error('Elements have wrong size');
    end
    matrix(:,i)=varargin{i};
end

end
