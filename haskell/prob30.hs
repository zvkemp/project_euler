
max_n = 354294

digits :: (Integral a) => a -> [a]
digits n
  | last_digit == n = [n]
  | otherwise       = last_digit:(digits (div n 10))
  where last_digit = mod n 10

is_sum_of_fifth_powers :: (Integral a) => a -> Bool
is_sum_of_fifth_powers n = digit_sum == n
  where digit_sum = foldl (\acc x -> acc + (x^5)) 0 $ digits n

main = print $ sum $ filter is_sum_of_fifth_powers [2..max_n]


