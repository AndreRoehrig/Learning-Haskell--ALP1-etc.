summe :: [Integer] -> Double
summe a = fromIntegral(sum a)

laenge :: [Integer] -> Double
laenge a = fromIntegral(length a)

durchschnitt :: [Integer] -> Double
durchschnitt a = (summe a) / (laenge a)

unterdurchschnitt :: [Integer] -> [Integer]
unterdurchschnitt a = [b | b <- a, fromIntegral(b) < durchschnitt a]

anzahlunter :: [Integer] -> Int
anzahlunter a = length (unterdurchschnitt a)
