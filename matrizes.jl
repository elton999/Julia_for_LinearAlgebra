using LinearAlgebra

#vetores
a = [1, 2, 3]
b = [1, 2, 3]

println(a)
println(b)

#matrizes
a = Array{Int}(undef, 2, 2)
println(a)

#em julia o array começa pelo número 1
a[1] = 0

#construir uma vetores apenas com valores de 1
u = ones(3)
println(u)

#construir matrizes com valor de 1
u = ones(3, 3) # matriz 3x3
println(u)

#comando size retorna os valores de linhas e colunas de uma matriz/vetor
print(size(u))