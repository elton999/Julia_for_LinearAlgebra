# eu estou usando a versão 1.7.3 da linguagem julia
using JuMP # importa biblioteca JuMP
using HiGHS # importa HiGHS 
model = Model(HiGHS.Optimizer) # criando um modelo
@variable(model, x >= 0) # a variavel x pode ser igual ou maior que 0
@variable(model, y >= 0) # a variavel y pode ser igual ou maior que 0
@objective(model, Max, 3000x + 5000y) # definindo a função objetivo
@constraint(model, c1, x <= 4) # defenindo restrição onde x deve ser menor ou igual a 4
@constraint(model, c2, 2y <= 12) # definindo restrição onde 2y deve ser menor ou igual a 12
@constraint(model, c3, 3x + 2y <= 18) # definindo restrição onde 3x + 2y deve ser menor ou 18 
optimize!(model) # otimiza o modelo com a função optimize!()
@show objective_value(model) # mostra o valor da função objetivo encontrada
@show value(x) # mostra o valor de x
@show value(y) # mostra o valor de y

# escrito por: Elton Carvalho da Silva
# email: eltoncarsilva73@gmail.com