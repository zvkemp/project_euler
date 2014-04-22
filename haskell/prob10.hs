--Find the sum of all the primes below two million

-- all primes other than 2 or 3 are of the form 6k + 1 or 6k + 5
-- the list comprehension is the set of prime candidates
primes = filter (is_prime) (2:3:[6*k + r | k <- [0..], r <- [1, 5]])

is_prime :: Int -> Bool
is_prime 0 = False
is_prime 1 = False
is_prime 2 = True
is_prime n
  | any (\y -> (mod n y) == 0) pr = False
  | otherwise                     = True
  where pr = takeWhile (\x -> x*x <= n) primes

main = print (sum $ takeWhile (< 2000000) primes)
