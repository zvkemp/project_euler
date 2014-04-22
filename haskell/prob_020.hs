factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

digits :: (Integral a) => a -> [a]
digits n
  | last_digit == n = [n]
  | otherwise       = last_digit:(digits (div n 10))
  where last_digit = mod n 10

main = print $ sum $ digits $ factorial 100

