def largest_prime_factor(target):
  if target%2==0:
    target=target//2
  for i in range(3,int(target**(1/2)+1),2):
    if target%i==0:
      target=target//i
  return target
      
        
def largest_prime_factor(target):
  i=2
  while i*i<=target:
    if (target%i) != 0:
      i+=1
    else:
      target=target//i
  return target
