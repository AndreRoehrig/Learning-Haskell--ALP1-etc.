matchmatch :: Eq a => [a] -> [a] -> Bool
matchmatch a b
    |a == b = True
    |otherwise = False


