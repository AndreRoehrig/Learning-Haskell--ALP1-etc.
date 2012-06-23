mapperperf :: Float -> [Float] -> [(Float,Float)]
mapperperf a [] = []
mapperperf a b = [] ++ (if elem (a**2 + (head b)**2) (quad [0 .. 1000]) then [(a,head b)] else []) ++ mapperperf a (tail b)

quad :: [Float] -> [Float]
quad [] = []
quad a = [] ++ [(head a) ** 2] ++ quad (tail a)

perfectnumbers :: [Float] -> [(Float,Float)]
perfectnumbers [] = []
perfectnumbers a = mapperperf (head a) a ++ perfectnumbers (tail a)

numbersumfinder :: [(Float,Float)] -> [(Float,Float)]
numbersumfinder [] = []
numbersumfinder a = [] ++ if ((fst (head a)) + (snd (head a)) + ((fst (head a) ** 2 + snd (head a) ** 2)**(1/2))) == 12 then [(fst (head a),snd (head a))] else [] ++ numbersumfinder (tail a)
