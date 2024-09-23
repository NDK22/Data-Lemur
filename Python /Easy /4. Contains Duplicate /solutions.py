def contains_duplicate(input)-> bool:
  set_input = set(input)
  return len(input) != len(set_input)

# Solution
# A brute-force way to solve this would be to generate all pairs of elements, and check if the pair contains a duplicated element. Here's that code:

def contains_duplicate(input):
  for i in range(len(input)-1):
    for j in range(i+1, len(input)):
      if (input[i] == input[j]):
        return True
  return False
#Note that the outer loop iterates from the first element to the second-to-last element, and the inner loop iterates from the element after the current element to the last element. This ensures that we generate each pair only once.


# Solution #2: Sorting The Input List
# Typically, during an interview, you are expected to come up with other solutions, that trade-off on time and space. Here's a solution which sorts the data first, which takes only 

# O(n∗log(n)) time to first sort the input list.

# Then, we iterate through the list, and check if each value is the same as the value directly before it. If they are the same, that means there was a duplicate.

def contains_duplicate(input):
  input.sort()
  for i in range(len(input)-1):
      if (input[i] == input[i+1]):
          return True
  return False
# Solution #3: Using a Dictionary
# As a reminder, Python dictionaries are designed to provide efficient key-value lookups, and their average-case performance is typically constant time. We can use a dictionary to track elements we've seen, and if we come across a list element that's been seen before, we know there are duplicates.

# However, if we get to the end of the list, and never encounter an element that's already a part of our dictionary, then we know there are no duplicates. Here's code to do that:

def contains_duplicate(input):
  seen = {}
  for i in input:
    if i in seen:
      return True
    seen[i] = True
  return False
# This method runs in 
# O(n) since it's just one pass across the input list, but the downside is there is extra space consumed. This algorithm's space time complexity 
# O(n) which is used to store the dictionary.
