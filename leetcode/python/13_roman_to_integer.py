def romanToInt(s: str) -> int:
    SYMBOLS = {'M' : 1000, 'D' : 500, 'C' : 100,
                'L' : 50, 'X' : 10, 'V' : 5, 'I' : 1}
    total_value = 0
    prev = 0
    for sym in s:
        current = SYMBOLS[sym]
        if current > prev:
            total_value += current - 2*prev
        else:
            total_value += current
        prev = current
    return total_value



print(romanToInt('MMMCMXCIX')) == 3999
print(romanToInt('MCMXCIV')) == 1994
