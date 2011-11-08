zinsen :: Double -> Double -> Double
zinsen kapital zinsfuß = kapital * zinsfuß * 0.01

endwert :: Double -> Double -> Double
endwert kapital zinsfuß = kapital + zinsen kapital zinsfuß

endwert2 :: Double -> Double -> Double
endwert2 kapital zinsfuß = (endwert kapital zinsfuß) + zinsen (endwert kapital zinsfuß) zinsfuß
