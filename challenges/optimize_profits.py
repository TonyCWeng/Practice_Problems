from pulp import *

def optimizeProfits(total_acres, total_hours, profit_per_acre_1, profit_per_acre_2, hours_per_acre1, hours_per_acre2):
    prob = LpProblem("Farm Optimization", LpMaximize)
    # Initialize problem variables, Corn (in integer acres) and Oats (in integer acres)
    x=LpVariable("Acres_of_corn", 0, None, LpInteger)
    y=LpVariable("Acres_of_oats", 0, None, LpInteger)
    prob += profit_per_acre_1*x + profit_per_acre_2*y, "Profit; to be maximized"

    # Add constraints
    prob += hours_per_acre1*x + hours_per_acre2*y <= total_hours, "Labour constraint"
    prob += x + y <= total_acres, "Land constraint"
    # prob.writeLP("FarmOptimization.lp")
    prob.solve()
    return f'{x.varValue} acres of corn, {y.varValue} acres of oats, max profit: {pulp.value(prob.objective)}'

print(optimizeProfits(240, 320, 40, 30, 2, 1))
print(optimizeProfits(300, 380, 70, 45, 3, 1))
print(optimizeProfits(180, 420, 65, 55, 3, 2))