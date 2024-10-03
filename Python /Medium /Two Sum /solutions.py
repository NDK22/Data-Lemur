def two_sum(input: list[int], target: int) -> list[int]:
  i=0
  while i<len(input)-1:
    j= i+1
    while j < len(input):
      if input[i]+input[j]==target:
        return [i,j]
      j+=1
    i+=1
  return [-1,-1]

def two_sum(input: list[int], target: int) -> list[int]:
  d = {}
  for i in range(len(input)):
    complement = target - input[i]
    if complement in d:
      return [d[complement],i]
    d[input[i]]=i
  return [-1,-1]
    
