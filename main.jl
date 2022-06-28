# eu estou usando a versão 1.7.3 da linguagem julia
using JuMP # importa biblioteca JuMP
using HiGHS # importando HiGHS 

model = Model(HiGHS.Optimizer)

@variable(model, x >= 0)
@variable(model, y >= 0)

@objective(model, Max, 3000x + 5000y)

@constraint(model, c1, x <= 4)
@constraint(model, c2, 2y <= 12)
@constraint(model, c3, 3x + 2y <= 18)

print(model)
optimize!(model)

objective_value(model)

@show value(x)
@show value(y)
