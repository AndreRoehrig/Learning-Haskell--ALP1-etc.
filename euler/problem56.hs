import Data.Char
import Data.List

digitsum :: Integer -> Int
digitsum a = sum b
    where s = show (a)
          b = map digitToInt s
          
powerforone :: Integer -> Integer -> [Integer]
powerforone a 0 = []
powerforone a b = [a^b] ++ powerforone a (b-1)

allpowers 0 b = []
allpowers a b = (powerforone a b) ++ allpowers (a-1) b
