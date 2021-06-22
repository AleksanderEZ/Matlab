firstVector = [1, 1, 0]
secondVector = [0, 1, 1]
crossProduct = cross(firstVector, secondVector)
dotProduct = dot(firstVector, secondVector)
module = norm(secondVector)
projection = (dotProduct/(module*module)) * secondVector
origin = [0, 0, 0]
quiver3(origin(1), origin(2), origin(3), firstVector(1), firstVector(2), firstVector(3))
hold on
quiver3(origin(1), origin(2), origin(3), secondVector(1), secondVector(2), secondVector(3))
quiver3(origin(1), origin(2), origin(3), crossProduct(1), crossProduct(2), crossProduct(3))
quiver3(origin(1), origin(2), origin(3), projection(1), projection(2), projection(3))