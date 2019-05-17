class Solution:
    def twoCityScheduleCost(self, costs):
        # Sort costs by the difference between City A and City B.
        # Doing so essentially arranges the costs by opportunity cost savings.
        costs = sorted(costs, key=lambda cost: cost[0] - cost[1])
        total_cost = 0
        # The number of people going to each city is equal to the length of the costs
        # divided by 2.
        num_persons = len(costs) // 2
        # The first n people will be going to City A. The latter half to City B.
        for cost_arr in costs[:num_persons]:
            total_cost += cost_arr[0]
        for cost_arr in costs[num_persons:]:
            total_cost += cost_arr[1]
        return total_cost
