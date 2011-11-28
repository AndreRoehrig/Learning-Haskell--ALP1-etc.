--recursion
filter1:: (a->Bool) -> [a] -> [a]
filter1 p [] = []
filter1 p x = if p (head x) then (head x):(filter1 p (tail x)) 
            else filter1 p (tail x) 
