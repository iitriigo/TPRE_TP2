importData;


 gnOne = makeFeature(GN, 1);
 gnTwo = makeFeature(GN, 7);

N=5;

matrixFull = makeMatrix(GN, Hour, Month, Week, gnOne, gnTwo);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

CoalPrev = myPredict(matrixFull,net,7);

load splat, sound(y,1/2*Fs)