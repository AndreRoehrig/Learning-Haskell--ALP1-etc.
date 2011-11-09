divisors n = [x | x <- [1..(n-1)], rem n x == 0]

summe n = sum (divisors n)


perfect n = [x | x <- [1..(n-1)], x == summe x]
