--What is the largest prime factor of the number 600851475143 ?

prime_factors :: (Integral a) => a -> [a]
prime_factors n = pf n 2 []

pf :: (Integral a) => a -> a -> [a] -> [a]
pf 0 _ _ = []
pf 1 _ _ = []
pf x current xs
  | current == x       = current:xs
  | mod x current == 0 = pf (div x current) (current) (current:xs)
  | otherwise          = pf x (current + 1) xs

main = print (head (prime_factors 600851475143))
