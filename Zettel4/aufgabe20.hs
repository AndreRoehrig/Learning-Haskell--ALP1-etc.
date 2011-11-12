takeWhile1 :: (a -> Bool) -> [a] -> [a]
takeWhile1 p [] = []
takeWhile1 p x = if p (head x) then head x:(takeWhile1 p (tail x)) else []

-- part b missing