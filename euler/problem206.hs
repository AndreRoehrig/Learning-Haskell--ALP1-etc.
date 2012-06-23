listof10 :: Integer -> Integer -> [Integer]
listof10 a b = [i |i <- [a..b],(mod i 10) == 0,(mod i 1000)>299,(mod i 100000)>28283]
