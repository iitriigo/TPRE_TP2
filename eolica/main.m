%importData;


eolicOne = makeFeature(Eolic, 1);
eolicTwo = makeFeature(Eolic, 7);

N=7;

matrixFull = makeMatrix(Eolic,Wind, Month, Hour, Temp, ...
             eolicOne, Rainfall, Week, WindDirc);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

EolicPrev = myPredict(matrixFull,net,7);

load splat, sound(y,1/2*Fs)