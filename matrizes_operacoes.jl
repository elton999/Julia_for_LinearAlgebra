using LinearAlgebra

#adição entre vetores
a = [1, 2, 3]
b = [4, 5, 6]

c = a + b
println(c)

#trasponsição de vetores (transforma uma matriz linha em uma matriz coluna)
c = a' + b'
println(c)

#soma de matrizes
A = [1 2 3; 4 5 6; 7 8 9]
B = [1 1 1; 1 1 1; 1 1 1]

C = A + B
println(C)

#Operações vetorizada
b = [1 1 1]
println(A .+ b)

#se o vetor for um vetor coluna ele podera multiplicar por uma matriz que tenha a mesma quantidade de linhas
println(A * b')


#calculando o produto interno entre dois vetores (.*)
a = [0, 1]
b = [1, 0]
c = a .* b
println(c)