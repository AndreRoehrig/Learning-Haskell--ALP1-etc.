einser :: a -> Int
einser x = 1

length1 :: [a] -> Int
length1 a = sum (map einser a)
-- length1 to avoid overloading
