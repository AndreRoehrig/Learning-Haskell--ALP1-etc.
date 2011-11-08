dreiecktest :: Double -> Double -> Double -> Bool
dreiecktest x y z = if x >= (y+z) then False
		else if y >= (x+z) then False
		else if z >= (x+y) then False
		else True
