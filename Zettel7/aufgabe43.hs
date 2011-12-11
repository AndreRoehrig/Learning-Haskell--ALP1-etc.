comparelistsum :: [Integer] -> [Integer] -> [Integer] 
comparelistsum xs ys = if (sum xs) >= (sum ys) then xs
                else ys

recursionbaby :: [Integer] -> [Integer] -> [Integer]
recursionbaby xs [] = xs
recursionbaby xs ys = if comparelistsum xs ys == xs then recursionbaby xs (tail ys)
                    else recursionbaby ys (tail ys)

findsubseq :: [Integer] -> [Integer] -> [Integer]
findsubseq xs [] = xs
findsubseq xs ys = if sum (recursionbaby xs (tail xs)) >= sum (recursionbaby ys (tail ys)) then findsubseq xs (init ys)
                 else findsubseq ys (init ys)

bigsubseq :: [Integer] -> Integer
bigsubseq xs = if sum(findsubseq xs (init xs)) > 0 then sum(findsubseq xs (init xs))
             else 0 --die leere Teilfolge ist immer enthalten
