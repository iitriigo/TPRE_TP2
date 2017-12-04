
importData;

nucOne = makeFeature(Nuc, 1); 

nucTwo = makeFeature(Nuc, 7);


N=2;

matrixFull = makeMatrix(Nuc, nucOne, nucTwo);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

myPredict(matrixFull,net,7);

