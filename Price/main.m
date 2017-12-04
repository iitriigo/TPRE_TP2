importData;

 priceOne = makeFeature(Price, 1);
 priceTwo = makeFeature(Price, 7);

N=4;

matrixFull = makeMatrix(Price,priceOne, priceTwo, Temp, Wind);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

PricePrev = myPredict(matrixFull,net,7);

load splat, sound(y,1/2*Fs)