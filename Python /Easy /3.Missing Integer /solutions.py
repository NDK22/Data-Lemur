#This is a fun interview problem, because it's simple to answer, but most people can't think of multiple ways to solve it.

#If you breezed through this problem, can you think of ways to optimize the space or run-time complexity by utilizing a different approach? Or find a way to use Gauss's summation formula?

#Sorting Solution
#We can sort the input list, and then iterate through the sorted input. 
def missing_int(input: list[int])-> int:
    input.sort()
    for i in range(len(input)):
      if i != input[i]:
        return i
    return len(input)
#Sorting the input list has a time complexity of 
#O(n∗logn).


#Set Solution
#We can first stash the entire input into a set. Then, we can iterate through all the expected numbers (the size of the input list + 1) and if it doesn't occur in the input_set we've found our missing number:

def missing_int(input: list[int])-> int:
  input_set = set(input)
  n = len(input) + 1
  for i in range(n):
    if i not in input_set:
      return i
#This is efficient because Python sets are implemented as hash tables, similar to dictionaries, which use a hash function to map elements to specific buckets in the table. This hashing allows for very efficient lookup times because it reduces the search space to a specific bucket, making it possible to find an element in constant time on average (


#Overall, for this solution, the time complexity is O(n) due to the linear pass through all The space complexity is also O(n) due to the hash set we are using.

# Clever Solution: Guass Summation
# Johann Karl Friedrich Gauss, also known as 'Top G', came up with a formula in elementary school to sum up the numbers 

# He invented this formula after the teacher tried to give him busy-work, and asked him to sum up the first 100 numbers.

# Yung Gauss, like the boss he is, came up with this nifty formula instead: 

# n∗(n+1)//2


def missing_int(input: list[int])-> int:
    gauss_sum = len(input)*(len(input)+1) // 2
    actual_sum = sum(input)
    return gauss_sum - actual_sum
#Remember – we are Data Scientists – not Software Engineers. Coming up with a clever, mathematical-based solution like this during an onsite interview is an easy way to win the hearts and minds of your hiring committee.
