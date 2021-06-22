fprintf('Probabilidad teórica')
fullHouseChance = (nchoosek(13,1)*nchoosek(4,3)*nchoosek(12,1)*nchoosek(4,2))/nchoosek(52,5)

length = input('¿Número de iteraciones?: ');

fprintf('Probabilidad experimental: ')

fullHouses = 0;
for i = 1 : 1 : length
    cartas = sacarCartas();
    if(isFullHouse(cartas))
        fullHouses = fullHouses + 1;
    end
end

disp(fullHouses/length)
disp(fullHouseChance)

function cartas = sacarCartas()
    %Mano
    cartas = zeros(13, 4);

    %Sacar cartas
    for i = 1 : 5
        palo = floor(rand(1)*13+1);
        numero = floor(rand(1)*4+1);
        if (cartas(palo, numero) == 0)
            cartas(palo, numero) = 1;
        else
            i = i + 1;
        end
    end
end

%¿Es una mano un full house?
function fullHouse = isFullHouse(cartas)
    two = 0;
    three = 0;
    fullHouse = 0;
    for i = 1 : 13
        if (howManyOnes(cartas(i, :)) == 3)
            three = 1;
        end
        if (howManyOnes(cartas(i, :)) == 2)
            two = 1;
        end
    end
    if (two && three)
        fullHouse = 1;
    end
end

%Cuántos unos en una fila
function howManyOnes = howManyOnes(array)
    howManyOnes = 0;
    for i = 1 : 4
        if(array(i) == 1)
            howManyOnes = howManyOnes + 1;
        end
    end
end