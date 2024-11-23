def collatzSteps(n):
	count = 0
	while n != 1:
		if n%2==0:
			n =n/2
			count +=1
		else:
			n = 3*n +1
			count +=1
	return count

def collatzSteps(n):
    if n == 1:
        return 0
    if  n%2==0:
        return 1 + collatzSteps(n/2)
    else:
        return 1 + collatzSteps(3*n + 1)
