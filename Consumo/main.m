%importData;

enerConsOne = makeFeature(EnerCons,1);
enerConsTwo = makeFeature(EnerCons,7);

N=7;

matrixFull = makeMatrix(EnerCons,Week,Hour,Temp,enerConsOne,enerConsTwo);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

myPredict(matrixFull,net,7);
