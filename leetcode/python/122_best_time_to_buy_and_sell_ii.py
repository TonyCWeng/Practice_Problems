class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        profit = 0
        prev = prices[0]
        for current in prices:
            if current > prev:
                profit += current - prev
            prev = current
        return profit

# The rationale behind using a greedy solution goes as follows:
# 1) From the prompt, we know that we can make multiple transactions 
# in the same day. As such, we don't need to sell at an opportune moment because 
# we can sell the previous stock and then purchase the same day's stock
# to sell the next day's. 
# 2) If the current price >= previous price, then there's no
# scenario in which we purchase the previous stock.
# 3) If the current price < previous price, then we must always purchase
# the previous stock.
