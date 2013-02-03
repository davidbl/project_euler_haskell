nthFib n = round ( ( ((0.5 + 0.5 * sqrt5) ^ n') - ((0.5 - 0.5 * sqrt5) ^ n') ) / sqrt5 )
         where sqrt5 = sqrt 5
               n' = n + 1

nthFib' n = round $ phi ** fromIntegral n / sqrt5
  where sqrt5 = sqrt 5 :: Double
        phi = (1 + sqrt5) / 2

fibsLessThan max = takeWhile(< max) [nthFib' x | x <- [1..]]

problem2 max = sum $ filter  even $ fibsLessThan max
