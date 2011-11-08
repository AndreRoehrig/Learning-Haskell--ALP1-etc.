preis:: [(String, Float)] -> [(String, Float)] -> (Float,[String])
preis p e = ((sum (inListe p e)),(nichtInListe p e))

inListe:: [(String, Float)] -> [(String, Float)] -> [Float]
inListe p e= [(head (produktPreis p (fst x)))*snd x | x<-e, produktPreis p (fst x) /= []]

nichtInListe:: [(String, Float)] ->[(String, Float)] -> [String]
nichtInListe p e = [fst x|x<-e, produktPreis p (fst x) == []]

produktPreis:: [(String, Float)] -> String -> [Float]
produktPreis p e = [snd x | x<-p ,(fst x)==e]
