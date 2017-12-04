%importData;


 coalOne = makeFeature(Coal, 1);
 coalTwo = makeFeature(Coal, 7);

N=6;

matrixFull = makeMatrix(Coal,Month,Week, Hour, Wind, coalOne, coalTwo);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

CoalPrev = myPredict(matrixFull,net,7);

load splat, sound(y,1/2*Fs)