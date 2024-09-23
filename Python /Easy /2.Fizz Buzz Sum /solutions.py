def fizz_buzz_sum(target):
  answer =0
  for i in range(3, target):
    if i%3 ==0 or i%5==0:
      print(i)
      answer += i
  return answer
