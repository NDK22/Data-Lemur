def has_merge_conflict(pull_requests)-> bool:
  i=0
  while i <len(pull_requests)-1:
    j=i+1
    while j < len(pull_requests):
      if pull_requests[j][0]<=pull_requests[i][0]<=pull_requests[j][1] or pull_requests[j][0]<=pull_requests[i][1]<=pull_requests[j][1]:
        return True
      j+=1
    i+=1
  return False


def has_merge_conflict(pull_requests)-> bool:
  pull_requests.sort()
  for i in range(1,len(pull_requests)):
    previous_pull=pull_requests[i-1]
    if previous_pull[1]>=pull_requests[i][0]:
      return True
  return False
