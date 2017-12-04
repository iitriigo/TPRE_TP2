
importData;

hydroOne = makeFeature(Hydro,1);
hydroTwo = makeFeature(Hydro,7);

N=7;

matrixFull = makeMatrix(Hydro,Rainfall, Month, Hour, Temp, hydroOne,...
                         hydroTwo, Wind);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

myPredict(matrixFull,net,7);

load splat, sound(y,1/2*Fs)