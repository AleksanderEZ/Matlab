x = 1:100000
format long
y = 1-binocdf(2,x,0.00001)

plot(x, y)
xlabel('Número de intentos')
ylabel('Probabilidad')

simulations = simulate(200)

function hits = simulate(niter)
    history = []
    history(niter) = 0
    hits = 0
    for i = 1 : 1 : niter
        winnerNumber = floor(rand(1)*100000)
        if ismember(winnerNumber, history)
            hits = hits + 1
        end
        history(i) = winnerNumber
    end
end