x = 1:175
phase1 = 0
phase2 = 2.0944
phase3 = 2.0944*2
wave1 = 125*sin(50*x+phase1)
wave2 = 125*sin(50*x+phase2)
wave3 = 125*sin(50*x+phase3)

subplot(2, 1, 1)
plot(x, wave1)
hold on
plot(x, wave2)
plot(x, wave3, 'green')
subplot(2, 1, 2)
plot(x, wave1-wave2, 'yellow')
hold on
plot(x, wave1-wave3, 'cyan')
