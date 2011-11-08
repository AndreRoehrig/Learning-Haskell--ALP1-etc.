meantestrek1 :: Integer -> Integer -> Integer -> Integer
meantestrek2 :: Integer -> Integer -> Integer -> Integer
meantest     :: Integer -> Integer -> Integer -> Integer


meantestrek1 a b c = if a*3 > a+b+c then 1
		   else 0

meantestrek2 a b c = if b*3 > a+b+c then 1 + meantestrek1 a b c
		   else meantestrek1 a b c

meantest a b c     = if c*3 > a+b+c then 1 + meantestrek2 a b c
		   else meantestrek2 a b c
