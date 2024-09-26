def min_inequity(salaries, n):
  salaries.sort()
  salary_length = len(salaries)
  min_inequity = salaries[-1] 
  for i in range(salary_length - n + 1):
    if salaries[i+n-1]-salaries[i] < min_inequity:
      min_inequity = salaries[i+n-1]-salaries[i]
  return min_inequity
