vMin=input('Introduzca el valor mínimo: ');
vMax=input('Introduzca el valor máximo: ');
maxSeconds=9.9;
minSeconds=0;
step=0.1;
randValues= vMin + (vMax-vMin)*rand(100,1);
seconds=minSeconds:step:maxSeconds;
[maxValue, maxValueIndex] = max(randValues);
[minValue, minValueIndex] = min(randValues);
plot(seconds, randValues)
hold on
plot(maxValueIndex*step-step,maxValue,'-o')
plot(minValueIndex*step-step,minValue,'-o')
xlabel('Segundos')

factor=0.3;
axis([maxValueIndex*step-step-factor, maxValueIndex*step-step+factor, maxValue-factor, maxValue+factor])