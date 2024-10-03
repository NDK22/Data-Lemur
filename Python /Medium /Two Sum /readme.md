Two Sum
Amazon Python Interview Question

Given a list of integers input, and an integer target, return the indices of the two numbers which sum up to the target. Do not use the same list element twice.

Clarifications:

There is at most one solution.
If there is no valid solution, return [-1, -1].
Return the indices in increasing order (i.e. [1,3], NOT [3,1]).
Example #1
Input: input = [1, 4, 6, 10], target = 10

Output: [1, 2]

Explanation: Because 4 + 6 == 10, we return the index of elements 4 and 6, which is [1, 2]

Example #2
Input: input = [1, 4, 6, 10], target = 11

Output: [0, 3]

Explanation: Because input[0] + input[3] == 11, we return [0, 3].

Example #3
**Input: **input = [1, 4, 6, 10], target = 2

Output: [-1, -1]

Explanation: There are no two elements we can pick that sum up to 2. Remember, you can't use the same element twice!
