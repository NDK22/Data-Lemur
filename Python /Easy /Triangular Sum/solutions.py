def triangular_sum(nums):
	for step in range(len(nums)-1):
		for i in range(len(nums)-step-1):
			nums[i]=(nums[i]+nums[i+1])%10
	return nums[0]


def triangular_sum(nums):
    # Base case: When there's only one number left
    if len(nums) == 1:
        return nums[0]
    
    # Recursive case: Combine adjacent numbers and make the recursive call
    next_nums = []
    for i in range(1, len(nums)):
        next_nums.append((nums[i-1] + nums[i]) % 10)
    
    return triangular_sum(next_nums)
