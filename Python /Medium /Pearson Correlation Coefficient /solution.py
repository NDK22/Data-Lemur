import math

def corr(x, y):
	sum_of_x=math.fsum(x)
	sum_of_y=math.fsum(y)
	x_squared_sum = math.fsum(val**2 for val in x)
	y_squared_sum = math.fsum(val**2 for val in y)
	n = len(x)
	sum_of_xy = math.fsum(x[i]*y[i] for i in range(n))
	numerator = n*sum_of_xy - sum_of_x*sum_of_y
	denominator = math.sqrt((n*x_squared_sum-math.pow(sum_of_x,2))*(n*y_squared_sum-math.pow(sum_of_y,2)))
	if denominator==0:
	  return 0
	result = numerator/denominator
	return result
