using LinearAlgebra

A = [1 2 3; 3 2 1; 2 2 1]
b = [1; 2; -1]

x = b / A
println(x)
println(x * A)