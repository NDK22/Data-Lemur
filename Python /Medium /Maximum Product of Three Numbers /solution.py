def max_three(input):
  sorted_input = sorted(input)
  product_1 = sorted_input[-1]*sorted_input[-2]*sorted_input[-3]
  product_2 = sorted_input[0]*sorted_input[1]*sorted_input[-1]
  return max(product_1,product_2)
