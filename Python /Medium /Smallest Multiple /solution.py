def smallest_multiple(target):
  def gcd(a,b):
    while b:
      a,b = b, a%b
    return a
  def lcm(a,b):
    result = abs(a*b)//gcd(a,b)
    return result
  result=1
  for i in range(1,target +1):
    result = lcm(result,i)
  return result
