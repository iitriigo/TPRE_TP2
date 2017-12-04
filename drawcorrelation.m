function [ ] = drawcorrelation( Var, toPrev, n)
%This functions draws the correlations beetween several varaiables and
%calculates R valeu.
% drawcorrelation(Variable, WhatWeWantToPredict, order of the polimonial
% aproximation (varies from 1 to 3). 



matrix = makeMatrix(toPrev,Var);
matrix = removeGaps(matrix);

Var = matrix(:,2);
toPrev = matrix(:,1);


if n==1
    curve = fit(Var, toPrev, 'poly1');
elseif (n == 2)
    curve = fit(Var, toPrev, 'poly2');
elseif (n==3)
    curve = fit(Var, toPrev, 'poly3'); 
else
     disp('Only suited for linear, quadritic and cubic aprotimations')
end
        

R = corrcoef(Var,toPrev);

coer = R(2,1);

figure;
scatter(Var, toPrev);
hold on
plot(curve)
strcoer =['R = ' num2str(coer)];
x = max(Var);
y = max(toPrev);
text(x,y, strcoer)




end

