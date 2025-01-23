Triangular Sum
TikTok Python Interview Question

You are given an integer array nums, where each element in it is a single digit (0-9).

The triangular sum of nums is the value of the only element present in nums after the following process terminates:

Let nums comprise of n elements. If n == 1, end the process. Otherwise, create a new integer array of newNums of length n - 1.
For each index i, assign the value of newNums[i] as (nums[i] + nums[i+1]) % 10, where % denotes the modulo operator.
Replace the array nums with newNums.
Repeat the entire process starting from step 1.
Return the triangular sum of nums.

Test Case #1:
Input: nums = [1, 3, 5, 7]

Triangular Sum DataLemur Example

Iteration #1: Form newNums = [(1 + 3) % 10, (3 + 5) % 10, (5 + 7) % 10] = [4, 8, 2].

Iteration #2: Form newNums = [(4 + 8) % 10, (8 + 2) % 10] = [2, 0].

Iteration #3: Form newNums = [(2 + 0) % 10] = [2].

The triangular sum of nums is 2.

Test Case #2:
Input: nums = [9, 7, 5, 3]

Iteration #1: Form newNums = [(9 + 7) % 10, (7 + 5) % 10, (5 + 3) % 10] = [6, 2, 8].

Iteration #2: Form newNums = [(6 + 2) % 10, (2 + 8) % 10] = [8, 0].

Iteration #3: Form newNums = [(8 + 0) % 10] = [8].

The triangular sum of nums is 8.
