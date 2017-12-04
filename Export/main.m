%importData;


 exOne = makeFeature(Export, 1);
 exTwo = makeFeature(Export, 7);

N=3;

matrixFull = makeMatrix(Export,exOne, exTwo, Week);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

ExPrev = myPredict(matrixFull,net,7);

load splat, sound(y,1/2*Fs)