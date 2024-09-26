def max_subarray_sum(prices):
	minimum_price = prices[0]
	maximum_profit = 0
	for current_price in prices[1:]:
	  maximum_profit = max(maximum_profit, current_price - minimum_price)
	  minimum_price = min(minimum_price, current_price)
	return maximum_profit

def max_profit(prices):
  max_profit = 0
  for i in range(len(prices)-1):
    for j in range(i+1, len(prices)):
      cur_profit = prices[j] - prices[i]
      if (cur_profit > max_profit):
        max_profit = cur_profit
  return max_profit
