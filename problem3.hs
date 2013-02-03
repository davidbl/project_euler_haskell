factors num = [x | x <- [1..(round(sqrt (fromIntegral num)))], mod num x == 0]

isPrime num = (length (factors num)) == 1

maxPrimeFactor num = maximum $ filter isPrime $ factors num

