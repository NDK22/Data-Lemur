def max_subarray_sum(input):
  current_sum=0
  maximum_sum=0
  for i in range (len(input)):
    current_sum += input[i]
    maximum_sum= max(maximum_sum,current_sum)
    print(current_sum,maximum_sum)
    if current_sum <0:
      current_sum=0
  return maximum_sum
