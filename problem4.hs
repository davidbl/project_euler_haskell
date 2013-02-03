isPalindrome x = (reverse $ show x) == (show x)

problem4 max_digits = maximum [x*y | x <- my_range, y <- my_range, isPalindrome $ x*y ]
  where max = 10^max_digits
        my_range = [max-1,(max-2)..1]
