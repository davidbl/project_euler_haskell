multipleOf x y = mod x y == 0

multipleOfEither x y z = (multipleOf x y) || (multipleOf x z)

problemOneFilter x = multipleOfEither x 3 5

problemOne max = sum (filter problemOneFilter [1..(max -1 )]) 
