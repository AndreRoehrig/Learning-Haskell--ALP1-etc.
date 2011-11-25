-- a)
plusplus :: [a] -> [a] -> [a]
plusplus x y = foldr (:) y x

-- b)
concat' :: [[a]] -> [a]
concat' = foldr1 (++)

