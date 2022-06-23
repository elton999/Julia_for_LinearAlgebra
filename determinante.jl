using LinearAlgebra

#determinante de uma matriz
A = [1 2 3; 4 5 6; 7 8 9]
x = det(A)
println(x)

#um deteminate pode informar se uma matriz é invertivel
i = inv(A)
println(i)