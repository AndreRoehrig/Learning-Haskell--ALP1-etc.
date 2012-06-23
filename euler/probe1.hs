flaeche :: Fractional a => [(a,a)] -> a
flaeche [] = 0
flaeche (x:xs) = if fromIntegral(length(x:xs))>1 then rechnemir x (head xs) + flaeche(xs)
                                          else 0 

rechnemir :: Fractional a =>(a,a)-> (a,a)-> a
rechnemir (x1,y1) (x2,y2) = ((x2-x1)*(y2+y1))/2

flöche (x:xs) = abs(rechnemir (last(xs))x + flaeche (x:xs))

flaechePolygon :: (Fractional a) => [(a,a)] -> a
flaechePolygon []     = 0
flaechePolygon (p:ps) = abs (h ((p:ps) ++ [p]))
  where
      h ((x1,y1):(x2,y2):ps) = (x2-x1)*(y2+y1)/2  +  h ((x2,y2):ps)
      h _ = 0

