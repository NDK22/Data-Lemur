#The simplest way to check for intersecting elements of two lists is to use a for-loop to iterate over one array and check if each element in the first list is contained in the other list using the in operator.

def intersection(a, b):
  intersection_list = []
  for value in a:
    if value in b:
      intersection_list.append(value)
  return intersection_list    
#A cleaner way to write this using a list comprehension is as follows:

def intersection(a, b):
    intersection_list = [value for value in a if value in b]
    return intersection_list
#However, this leads to a time complexity of O(N*M) where N is the length of A, and M is the length of B.

#A better approach is to use sets (which utilizes a hash map implementation underneath) since the runtime time is O(1) for each lookup operation. Then we can do the series of lookups over the larger set (resulting in a O(min(N, M)) total runtime):

def intersection(a, b):
  set_a = set(a)
  set_b = set(b)
  if len(set_a) < len(set_b):
	  return [x for x in set_a if x in set_b]
  else:
    return [x for x in set_b if x in set_a]
#While the Python set's do have a built-in function called intersection(), coding interviews typically don't allow you to use that – they are trying to see you solve the problem from first-principles, not see if you memorized some lesser-known command.
#However, if you want to be cheeky, this would be the intersection() code to use:

def intersection(a, b):
    return list(set(a).intersection(b))
#Remember to cast the set back into a list using the list() command!
