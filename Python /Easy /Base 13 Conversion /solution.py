def convertToBase13(num):
    base_13 = {0: '0', 1: '1', 2: '2', 3: '3', 4: '4', 5: '5', 6: '6', 7: '7', 8: '8', 9: '9', 10: "A", 11: "B", 12: "C"}
    base_13_value = ''
    x = abs(num)

    while x >= 13:
        quotient, remainder = divmod(x, 13)
        base_13_value = base_13[remainder] + base_13_value
        x = quotient 

    base_13_value = base_13[x] + base_13_value  # Final value from remaining x

    if num < 0:  # Check negativity with the original number
        base_13_value = '-' + base_13_value

    return base_13_value
