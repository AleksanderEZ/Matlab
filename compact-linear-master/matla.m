clc;
clear variables;

n=500;
d=1;

compactPercentage = zeros(1, n/2);
linearPercentage = zeros(1, n/2);
matrixSize = n*n;

p = 1;
for i = d:n
   if mod(i, 2) ~= 0 
       compactSize = i*n;
       linearSize = linearSizeOfBandMatrix(n, i);
       compactPercentage(p) = (1 - compactSize/matrixSize) * 100;
       linearPercentage(p) = (1 - linearSize/matrixSize) * 100;
       p = p+1;
   end
end

X = (1:2:n);

subplot(1,2,1);
plot(X, compactPercentage);
legend("Compact");
xlabel("Diagonal size");
ylabel("Space saved (%)");
axis([0 n 0 100]);
subplot(1,2,2);
plot(X, linearPercentage);
xlabel("Diagonal size");
ylabel("Space saved (%)");
legend("Linear");
axis([0 n 0 100]);


function linearSize = linearSizeOfBandMatrix(matrixSize, diagonalWidth)
    linearSize = matrixSize;
    iterations = (diagonalWidth - 1)/2;
    for i = 1:iterations
        levelIDiagonalsLength = matrixSize - i;
        levelIDiagonalsLength = levelIDiagonalsLength * 2;
        linearSize = linearSize + levelIDiagonalsLength;
    end
end
