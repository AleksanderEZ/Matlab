matrix1 = randn(3,5)
matrix2 = randn(5,5)
matrix3 = randn(8,3)

result = [matrix1;matrix2];
result = [result matrix3]

inverse = inv(result)

mult = result*inverse;

error = abs(eye(8) - mult);

reference = ones(8)*10e-10;

if error < reference
    fprintf('Las matrices multiplicación e identidad SÍ son iguales')
else
    fprintf('Las matrices multiplicación e identidad NO son iguales')
end