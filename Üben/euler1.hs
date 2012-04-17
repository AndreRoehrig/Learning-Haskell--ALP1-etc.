teiler :: Integer -> [Integer]
teiler 0 = []
teiler a = [x|x<-[1..a] , x `mod` 3 == 0 || x `mod` 5 == 0]

primes :: Integer -> [Integer]
primes a = [x|x<-[1..(div a 2)],mod a x == 0]

primesum :: Integer -> [Integer]
primesum a = [x|x<-[1..a],primes x == [1]]

effekt :: [Integer] -> [Integer]
effekt a = [x|x<-a, mod x (head a) /= 0] ++ [head a]

effektsum :: [Integer] -> [Integer]
effektsum a = if (head a) == 2 then a else effektsum(effekt a)
