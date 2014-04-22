--digit_sum :: (Integral a) => a -> a

--produces reversed list of digits in a number
digits :: (Integral a) => a -> [a]
digits n
  | last_digit == n = [n]
  | otherwise       = last_digit:(digits (div n 10))
  where last_digit = mod n 10

main = print $ sum $ digits $ 2 ^ 1000

