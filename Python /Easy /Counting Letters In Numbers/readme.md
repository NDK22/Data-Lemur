Counting Letters In Numbers
Tesla Python Interview Question
Question
Solution
Discussion
Submissions
If the numbers from 1 to N are written out in words (e.g., "one", "two", "three", "four", etc.), how many letters are used in total when writing all numbers between 1 and N (inclusive)?

While writing the words, follow these rules:

Do not count spaces or hyphens.
British usage applies (we're fancy like that): for numbers over 100, include "and" (e.g., "one hundred and fifteen").
You can assume that N will always be less than or equal to 1000. Given an integer N, return the total number of letters used when writing the numbers from 1 to N in words.

Example 1:
Input: N = 5

Output: 19

Explanation:
The numbers between 1 and 5 written in words are:

1 → "one" (3 letters)
2 → "two" (3 letters)
3 → "three" (5 letters)
4 → "four" (4 letters)
5 → "five" (4 letters)
In total, 3 + 3 + 5 + 4 + 4 = 19 letters.
