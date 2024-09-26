Salary Inequity [Microsoft Python Interview Question]

Given a list of salaries, we'll define a metric called inequity which is the difference between max and min salary seen in the list:


inequity=max(input_list)−min(input_list)

Write a function called min_inequity which takes in a list of salaries, and a value n, and returns the minimum inequity possible when taking n salaries from the full salary list.

If that was hard to understand, you're not alone – let's break it down with some examples.

Example #1:
salaries = [60000, 80000, 120000, 70000]

n = 2

The minimum inequity is $10,000, because 

max(60000,70000)−min(60000,70000)=10000.

Example #2:
salaries = [60000, 80000, 120000, 70000]

n = 3

The minimum inequity is $20,000, because 

max(60000,70000,80000)−min(60000,70000,80000)=20000.
