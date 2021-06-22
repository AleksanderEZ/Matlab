cycle = input('Dame el periodo: ')
length = input('Ahora dame la duración: ')
frequency = 1/cycle
t = 1:length
x = cuadrado(t)

func = @cuadrado

intFunc = []
intFunc(length) = 0
for i = 1 : 1 : length
    intFunc(i) = integral(func, i-1, i)
end

plot(t, intFunc)
hold on
plot(t, x)
%pero fun no es de diversión
function y = cuadrado(x)
    global frequency
    y = 2*(2*floor(frequency*x)-floor(2*frequency*x))+1
end