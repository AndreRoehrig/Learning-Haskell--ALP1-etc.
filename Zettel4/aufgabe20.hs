takeWhile1 :: (a -> Bool) -> [a] -> [a]
takeWhile1 p [] = []
takeWhile1 p x = if p (head x) then head x:(takeWhile1 p (tail x)) else []

-- part b

splitAt11 :: Int -> [a] -> [a]
splitAt11 0 x = []
splitAt11 n [] = []
splitAt11 n x = head x:(splitAt11 (n-1) (tail x))

splitAt22 :: Int -> [a] -> [a]
splitAt22 0 x = x
splitAt22 n x = tail (splitAt22 (n-1) (x))

splitAt1 :: Int -> [a] -> ([a],[a])
splitAt1 n x = (splitAt11 n x,splitAt22 n x)

-- ugly code… found no better way with a recursion
