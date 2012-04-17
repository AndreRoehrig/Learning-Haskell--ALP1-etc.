sumsum :: Integer -> Integer
sumsum 0 = 0
sumsum x = x^100 + sumsum (x-1)


sumsumsum :: [Integer] -> [Integer]
sumsumsum [] = []
sumsumsum a = (sumsum (head a)) : (sumsumsum (tail a))
