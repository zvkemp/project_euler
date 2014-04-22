--What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

primes        = [2, 3, 5, 7, 11, 13, 17, 19]
factor        = foldl1 (*) primes

div_by_all :: (Integral a) => [a] -> a -> Bool
div_by_all [] _ = True
div_by_all (x:xs) n
  | (mod n x > 0) = False
  | otherwise = div_by_all xs n 

main = print (head (filter (div_by_all [1..20]) [factor, (2 * factor) ..]))
