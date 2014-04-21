square_of_sum :: (Integral a) => [a] -> a
square_of_sum = (^2) . sum

sum_of_squares :: (Integral a) => [a] -> a
sum_of_squares = sum . (map (^2))

main = print (abs (sum_of_squares [1..100] - square_of_sum [1..100]))



